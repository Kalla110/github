-----------------------------------------------------------------------------
-- |
-- License     :  BSD-3-Clause
-- Maintainer  :  Oleg Grenrus <oleg.grenrus@iki.fi>
--
-- The Github Repo Contents API, as documented at
-- <https://developer.github.com/v3/repos/contents/>
module GitHub.Endpoints.Repos.Contents (
    -- * Querying contents
    contentsFor,
    contentsFor',
    contentsForR,
    readmeFor,
    readmeFor',
    readmeForR,

    -- ** Create
    createFile,
    createFileR,

    -- ** Update
    updateFile,
    updateFileR,

    -- ** Delete
    deleteFile,
    deleteFileR
    ) where

import GitHub.Data
import GitHub.Internal.Prelude
import GitHub.Request
import Prelude ()

import qualified Data.Text.Encoding as TE

-- | The contents of a file or directory in a repo, given the repo owner, name, and path to the file
--
-- > contentsFor "thoughtbot" "paperclip" "README.md"
contentsFor :: Name Owner -> Name Repo -> Text -> Maybe Text -> IO (Either Error Content)
contentsFor = contentsFor' Nothing

-- | The contents of a file or directory in a repo, given the repo owner, name, and path to the file
-- With Authentication
--
-- > contentsFor' (Just (BasicAuth (user, password))) "thoughtbot" "paperclip" "README.md" Nothing
contentsFor' :: Maybe Auth ->  Name Owner -> Name Repo -> Text -> Maybe Text -> IO (Either Error Content)
contentsFor' auth user repo path ref =
    executeRequestMaybe auth $ contentsForR user repo path ref

contentsForR
    :: Name Owner
    -> Name Repo
    -> Text            -- ^ file or directory
    -> Maybe Text      -- ^ Git commit
    -> Request k Content
contentsForR user repo path ref =
    query ["repos", toPathPart user, toPathPart repo, "contents", path] qs
  where
    qs =  maybe [] (\r -> [("ref", Just . TE.encodeUtf8 $ r)]) ref

-- | The contents of a README file in a repo, given the repo owner and name
--
-- > readmeFor "thoughtbot" "paperclip"
readmeFor :: Name Owner -> Name Repo -> IO (Either Error Content)
readmeFor = readmeFor' Nothing

-- | The contents of a README file in a repo, given the repo owner and name
-- With Authentication
--
-- > readmeFor' (Just (BasicAuth (user, password))) "thoughtbot" "paperclip"
readmeFor' :: Maybe Auth -> Name Owner -> Name Repo -> IO (Either Error Content)
readmeFor' auth user repo =
    executeRequestMaybe auth $ readmeForR user repo

readmeForR :: Name Owner -> Name Repo -> Request k Content
readmeForR user repo =
    query ["repos", toPathPart user, toPathPart repo, "readme"] []

-- | Create a file.
createFile
    :: Auth
    -> Name Owner      -- ^ owner
    -> Name Repo       -- ^ repository name
    -> CreateFile
    -> IO (Either Error Content)
createFile auth user repo body =
    executeRequest auth $ createFileR user repo body

-- | Create a file.
-- See <https://developer.github.com/v3/repos/contents/#create-a-file>
createFileR
    :: Name Owner
    -> Name Repo
    -> CreateFile
    -> Request 'RW Content
createFileR user repo body =
    command Put ["repos", toPathPart user, toPathPart repo, "contents", createFilePath body] (encode body)

-- | Update a file.
updateFile
    :: Auth
    -> Name Owner      -- ^ owner
    -> Name Repo       -- ^ repository name
    -> UpdateFile
    -> IO (Either Error Content)
updateFile auth user repo body =
    executeRequest auth $ updateFileR user repo body

-- | Update a file.
-- See <https://developer.github.com/v3/repos/contents/#update-a-file>
updateFileR
    :: Name Owner
    -> Name Repo
    -> UpdateFile
    -> Request 'RW Content
updateFileR user repo body =
    command Put ["repos", toPathPart user, toPathPart repo, "contents", updateFilePath body] (encode body)

-- | Delete a file.
deleteFile
    :: Auth
    -> Name Owner      -- ^ owner
    -> Name Repo       -- ^ repository name
    -> DeleteFile
    -> IO (Either Error ())
deleteFile auth user repo body =
    executeRequest auth $ deleteFileR user repo body

-- | Delete a file.
-- See <https://developer.github.com/v3/repos/contents/#delete-a-file>
deleteFileR
    :: Name Owner
    -> Name Repo
    -> DeleteFile
    -> Request 'RW ()
deleteFileR user repo body =
    command Delete ["repos", toPathPart user, toPathPart repo, "contents", deleteFilePath body] (encode body)
