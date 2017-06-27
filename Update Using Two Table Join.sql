
/*
UPDATE	NETQUOTE.DBO.PendingApplications
SET		APPLICATIONSTATUSID = T.APPLICATIONSTATUSID
FROM	TAIPEI.NetQuoteWebsite.DBO.PendingApplications AS T
	INNER JOIN NETQUOTE.DBO.PendingApplications
		ON  NETQUOTE.DBO.PendingApplications.APPLICATIONID = T.APPLICATIONID
WHERE	NETQUOTE.DBO.PendingApplications.APPLICATIONID = T.APPLICATIONID
(1163531 row(s) affected)
*/

UPDATE	NETQUOTE.DBO.PendingApplications
SET		BrandId = T.BrandId
FROM	TAIPEI.NetQuoteWebsite.DBO.PendingApplications AS T
	INNER JOIN NETQUOTE.DBO.PendingApplications
		ON  NETQUOTE.DBO.PendingApplications.APPLICATIONID = T.APPLICATIONID
WHERE	NETQUOTE.DBO.PendingApplications.APPLICATIONID = T.APPLICATIONID
AND		T.BrandId IS NOT NULL