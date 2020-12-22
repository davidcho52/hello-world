USE [CDCT]
GO
ALTER TABLE [dbo].[QRTZ_TRIGGERS] DROP CONSTRAINT [FK_QRTZ_TRIGGERS_QRTZ_JOB_DETAILS]
GO
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] DROP CONSTRAINT [FK_QRTZ_SIMPROP_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] DROP CONSTRAINT [FK_QRTZ_SIMPLE_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] DROP CONSTRAINT [FK_QRTZ_CRON_TRIGGERS_QRTZ_TRIGGERS]
GO
/****** Object:  View [dbo].[V_ACTIVITY]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_ACTIVITY]
GO
/****** Object:  View [dbo].[V_Shttle_Card]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_Shttle_Card]
GO
/****** Object:  View [dbo].[V_Roadside_Assistance_Card]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_Roadside_Assistance_Card]
GO
/****** Object:  View [dbo].[V_Extra_SErvice_Rank_R]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_Extra_SErvice_Rank_R]
GO
/****** Object:  View [dbo].[V_Lounge_Card]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_Lounge_Card]
GO
/****** Object:  View [dbo].[V_Car_Park_Card]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_Car_Park_Card]
GO
/****** Object:  View [dbo].[V_Car_Airport_Card]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_Car_Airport_Card]
GO
/****** Object:  View [dbo].[V_Extra_SErvice_Rank]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP VIEW [dbo].[V_Extra_SErvice_Rank]
GO
/****** Object:  Table [dbo].[TMS_SCHEDULE_EXECSTATUS]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP TABLE [dbo].[TMS_SCHEDULE_EXECSTATUS]
GO
/****** Object:  Table [dbo].[TMS_SCHEDULE_CONFIG]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP TABLE [dbo].[TMS_SCHEDULE_CONFIG]
GO
/****** Object:  Table [dbo].[TMS_SCHEDULE_BATCH_LOG]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP TABLE [dbo].[TMS_SCHEDULE_BATCH_LOG]
GO
/****** Object:  Table [dbo].[TM_SERVER_INFO]    Script Date: 2020/12/22 上午 11:24:14 ******/
DROP TABLE [dbo].[TM_SERVER_INFO]
GO
/****** Object:  Table [dbo].[TM_MSG_USER]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[TM_MSG_USER]
GO
/****** Object:  Table [dbo].[TM_MSG_INFO]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[TM_MSG_INFO]
GO
/****** Object:  Table [dbo].[TM_MSG_HEADER]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[TM_MSG_HEADER]
GO
/****** Object:  Table [dbo].[TM_MSG_BODY]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[TM_MSG_BODY]
GO
/****** Object:  Table [dbo].[TM_LOG]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[TM_LOG]
GO
/****** Object:  Table [dbo].[TM_DUP]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[TM_DUP]
GO
/****** Object:  Table [dbo].[Rep9015]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9015]
GO
/****** Object:  Table [dbo].[Rep9014]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9014]
GO
/****** Object:  Table [dbo].[Rep9012]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9012]
GO
/****** Object:  Table [dbo].[Rep9011]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9011]
GO
/****** Object:  Table [dbo].[Rep9010]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9010]
GO
/****** Object:  Table [dbo].[Rep9009]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9009]
GO
/****** Object:  Table [dbo].[Rep9008]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9008]
GO
/****** Object:  Table [dbo].[Rep9007]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9007]
GO
/****** Object:  Table [dbo].[Rep9006]    Script Date: 2020/12/22 上午 11:24:15 ******/
DROP TABLE [dbo].[Rep9006]
GO
/****** Object:  Table [dbo].[Rep9005]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep9005]
GO
/****** Object:  Table [dbo].[Rep9004]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep9004]
GO
/****** Object:  Table [dbo].[Rep9003]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep9003]
GO
/****** Object:  Table [dbo].[Rep9002]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep9002]
GO
/****** Object:  Table [dbo].[Rep9001]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep9001]
GO
/****** Object:  Table [dbo].[Rep0144]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0144]
GO
/****** Object:  Table [dbo].[Rep0143]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0143]
GO
/****** Object:  Table [dbo].[Rep0142]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0142]
GO
/****** Object:  Table [dbo].[Rep0141]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0141]
GO
/****** Object:  Table [dbo].[Rep0140]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0140]
GO
/****** Object:  Table [dbo].[Rep0137]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0137]
GO
/****** Object:  Table [dbo].[Rep0136]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0136]
GO
/****** Object:  Table [dbo].[Rep0135]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0135]
GO
/****** Object:  Table [dbo].[Rep0134]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0134]
GO
/****** Object:  Table [dbo].[Rep0133]    Script Date: 2020/12/22 上午 11:24:16 ******/
DROP TABLE [dbo].[Rep0133]
GO
/****** Object:  Table [dbo].[Rep0132]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0132]
GO
/****** Object:  Table [dbo].[Rep0131]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0131]
GO
/****** Object:  Table [dbo].[Rep0130]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0130]
GO
/****** Object:  Table [dbo].[Rep0129]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0129]
GO
/****** Object:  Table [dbo].[Rep0126]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0126]
GO
/****** Object:  Table [dbo].[Rep0125]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0125]
GO
/****** Object:  Table [dbo].[Rep0124]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0124]
GO
/****** Object:  Table [dbo].[Rep0123]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0123]
GO
/****** Object:  Table [dbo].[Rep0122]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0122]
GO
/****** Object:  Table [dbo].[Rep0121]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0121]
GO
/****** Object:  Table [dbo].[Rep0119]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0119]
GO
/****** Object:  Table [dbo].[Rep0118]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0118]
GO
/****** Object:  Table [dbo].[Rep0117]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0117]
GO
/****** Object:  Table [dbo].[Rep0116]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0116]
GO
/****** Object:  Table [dbo].[Rep0115]    Script Date: 2020/12/22 上午 11:24:17 ******/
DROP TABLE [dbo].[Rep0115]
GO
/****** Object:  Table [dbo].[Rep0114]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0114]
GO
/****** Object:  Table [dbo].[Rep0113]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0113]
GO
/****** Object:  Table [dbo].[Rep0112]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0112]
GO
/****** Object:  Table [dbo].[Rep0111]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0111]
GO
/****** Object:  Table [dbo].[Rep0109]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0109]
GO
/****** Object:  Table [dbo].[Rep0108]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0108]
GO
/****** Object:  Table [dbo].[Rep0107]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0107]
GO
/****** Object:  Table [dbo].[Rep0106]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0106]
GO
/****** Object:  Table [dbo].[Rep0105]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0105]
GO
/****** Object:  Table [dbo].[Rep0104]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0104]
GO
/****** Object:  Table [dbo].[Rep0103]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0103]
GO
/****** Object:  Table [dbo].[Rep0091]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0091]
GO
/****** Object:  Table [dbo].[Rep0090]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0090]
GO
/****** Object:  Table [dbo].[Rep0089]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0089]
GO
/****** Object:  Table [dbo].[Rep0087]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0087]
GO
/****** Object:  Table [dbo].[Rep0078]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0078]
GO
/****** Object:  Table [dbo].[Rep0062]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0062]
GO
/****** Object:  Table [dbo].[Rep0061]    Script Date: 2020/12/22 上午 11:24:18 ******/
DROP TABLE [dbo].[Rep0061]
GO
/****** Object:  Table [dbo].[Rep0059]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0059]
GO
/****** Object:  Table [dbo].[Rep0057]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0057]
GO
/****** Object:  Table [dbo].[Rep0056]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0056]
GO
/****** Object:  Table [dbo].[Rep0053]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0053]
GO
/****** Object:  Table [dbo].[Rep0052]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0052]
GO
/****** Object:  Table [dbo].[Rep0049]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0049]
GO
/****** Object:  Table [dbo].[Rep0048]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0048]
GO
/****** Object:  Table [dbo].[Rep0047]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0047]
GO
/****** Object:  Table [dbo].[Rep0046]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0046]
GO
/****** Object:  Table [dbo].[Rep0045]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0045]
GO
/****** Object:  Table [dbo].[Rep0043]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0043]
GO
/****** Object:  Table [dbo].[Rep0042]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0042]
GO
/****** Object:  Table [dbo].[Rep0041]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0041]
GO
/****** Object:  Table [dbo].[Rep0040]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0040]
GO
/****** Object:  Table [dbo].[Rep0038]    Script Date: 2020/12/22 上午 11:24:19 ******/
DROP TABLE [dbo].[Rep0038]
GO
/****** Object:  Table [dbo].[Rep0037]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0037]
GO
/****** Object:  Table [dbo].[Rep0036]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0036]
GO
/****** Object:  Table [dbo].[Rep0034]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0034]
GO
/****** Object:  Table [dbo].[Rep0033]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0033]
GO
/****** Object:  Table [dbo].[Rep0032]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0032]
GO
/****** Object:  Table [dbo].[Rep0030]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0030]
GO
/****** Object:  Table [dbo].[Rep0029]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0029]
GO
/****** Object:  Table [dbo].[Rep0028]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0028]
GO
/****** Object:  Table [dbo].[Rep0027]    Script Date: 2020/12/22 上午 11:24:20 ******/
DROP TABLE [dbo].[Rep0027]
GO
/****** Object:  Table [dbo].[Rep0026]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0026]
GO
/****** Object:  Table [dbo].[Rep0023]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0023]
GO
/****** Object:  Table [dbo].[Rep0022]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0022]
GO
/****** Object:  Table [dbo].[Rep0021]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0021]
GO
/****** Object:  Table [dbo].[Rep0020]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0020]
GO
/****** Object:  Table [dbo].[Rep0019]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0019]
GO
/****** Object:  Table [dbo].[Rep0018]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0018]
GO
/****** Object:  Table [dbo].[Rep0017]    Script Date: 2020/12/22 上午 11:24:21 ******/
DROP TABLE [dbo].[Rep0017]
GO
/****** Object:  Table [dbo].[Rep0016]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0016]
GO
/****** Object:  Table [dbo].[Rep0015]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0015]
GO
/****** Object:  Table [dbo].[Rep0014]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0014]
GO
/****** Object:  Table [dbo].[Rep0013]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0013]
GO
/****** Object:  Table [dbo].[Rep0011]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0011]
GO
/****** Object:  Table [dbo].[Rep0010]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0010]
GO
/****** Object:  Table [dbo].[Rep0009]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0009]
GO
/****** Object:  Table [dbo].[Rep0008]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0008]
GO
/****** Object:  Table [dbo].[Rep0007]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0007]
GO
/****** Object:  Table [dbo].[Rep0006]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0006]
GO
/****** Object:  Table [dbo].[Rep0005]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0005]
GO
/****** Object:  Table [dbo].[Rep0004]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0004]
GO
/****** Object:  Table [dbo].[Rep0002]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0002]
GO
/****** Object:  Table [dbo].[Rep0001]    Script Date: 2020/12/22 上午 11:24:22 ******/
DROP TABLE [dbo].[Rep0001]
GO
/****** Object:  Table [dbo].[QRTZ_TRIGGERS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_TRIGGERS]
GO
/****** Object:  Table [dbo].[QRTZ_SIMPROP_TRIGGERS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS]
GO
/****** Object:  Table [dbo].[QRTZ_SIMPLE_TRIGGERS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS]
GO
/****** Object:  Table [dbo].[QRTZ_SCHEDULER_STATE]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_SCHEDULER_STATE]
GO
/****** Object:  Table [dbo].[QRTZ_PAUSED_TRIGGER_GRPS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS]
GO
/****** Object:  Table [dbo].[QRTZ_LOCKS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_LOCKS]
GO
/****** Object:  Table [dbo].[QRTZ_JOB_DETAILS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_JOB_DETAILS]
GO
/****** Object:  Table [dbo].[QRTZ_FIRED_TRIGGERS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_FIRED_TRIGGERS]
GO
/****** Object:  Table [dbo].[QRTZ_CRON_TRIGGERS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_CRON_TRIGGERS]
GO
/****** Object:  Table [dbo].[QRTZ_CALENDARS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_CALENDARS]
GO
/****** Object:  Table [dbo].[QRTZ_BLOB_TRIGGERS]    Script Date: 2020/12/22 上午 11:24:23 ******/
DROP TABLE [dbo].[QRTZ_BLOB_TRIGGERS]
GO
/****** Object:  Table [dbo].[Q_POINTS_DAILY_STATUS]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[Q_POINTS_DAILY_STATUS]
GO
/****** Object:  Table [dbo].[opsm002]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[opsm002]
GO
/****** Object:  Table [dbo].[opsm001]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[opsm001]
GO
/****** Object:  Table [dbo].[MT_XTMS]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_XTMS]
GO
/****** Object:  Table [dbo].[MT_XTMD]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_XTMD]
GO
/****** Object:  Table [dbo].[MT_TRAN]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_TRAN]
GO
/****** Object:  Table [dbo].[MT_TPAN]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_TPAN]
GO
/****** Object:  Table [dbo].[MT_STBO]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_STBO]
GO
/****** Object:  Table [dbo].[MT_SPRES]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_SPRES]
GO
/****** Object:  Table [dbo].[MT_SKUP]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_SKUP]
GO
/****** Object:  Table [dbo].[MT_SKSD]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_SKSD]
GO
/****** Object:  Table [dbo].[MT_RELP]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_RELP]
GO
/****** Object:  Table [dbo].[MT_REGM002]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_REGM002]
GO
/****** Object:  Table [dbo].[MT_REGM001]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_REGM001]
GO
/****** Object:  Table [dbo].[MT_REGC004]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_REGC004]
GO
/****** Object:  Table [dbo].[MT_REGC002]    Script Date: 2020/12/22 上午 11:24:24 ******/
DROP TABLE [dbo].[MT_REGC002]
GO
/****** Object:  Table [dbo].[MT_REGC001]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_REGC001]
GO
/****** Object:  Table [dbo].[MT_PXMART]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_PXMART]
GO
/****** Object:  Table [dbo].[MT_PUBL]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_PUBL]
GO
/****** Object:  Table [dbo].[MT_PTWH]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_PTWH]
GO
/****** Object:  Table [dbo].[MT_PREU]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_PREU]
GO
/****** Object:  Table [dbo].[MT_Point_Adjustment]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_Point_Adjustment]
GO
/****** Object:  Table [dbo].[MT_MPRES]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_MPRES]
GO
/****** Object:  Table [dbo].[MT_MMIR]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_MMIR]
GO
/****** Object:  Table [dbo].[MT_MITM]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_MITM]
GO
/****** Object:  Table [dbo].[MT_MIRH]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_MIRH]
GO
/****** Object:  Table [dbo].[MT_MICLP]    Script Date: 2020/12/22 上午 11:24:25 ******/
DROP TABLE [dbo].[MT_MICLP]
GO
/****** Object:  Table [dbo].[MT_MDOTS]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_MDOTS]
GO
/****** Object:  Table [dbo].[MT_MCODE]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_MCODE]
GO
/****** Object:  Table [dbo].[MT_Macotrn]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_Macotrn]
GO
/****** Object:  Table [dbo].[MT_LOGO]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_LOGO]
GO
/****** Object:  Table [dbo].[MT_Jcsgre2]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_Jcsgre2]
GO
/****** Object:  Table [dbo].[MT_Jcsgre1]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_Jcsgre1]
GO
/****** Object:  Table [dbo].[MT_Jaam]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_Jaam]
GO
/****** Object:  Table [dbo].[MT_J144]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_J144]
GO
/****** Object:  Table [dbo].[MT_J053]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_J053]
GO
/****** Object:  Table [dbo].[MT_INST]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_INST]
GO
/****** Object:  Table [dbo].[MT_ICLP]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_ICLP]
GO
/****** Object:  Table [dbo].[MT_ICLGUL]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_ICLGUL]
GO
/****** Object:  Table [dbo].[MT_ICLG]    Script Date: 2020/12/22 上午 11:24:26 ******/
DROP TABLE [dbo].[MT_ICLG]
GO
/****** Object:  Table [dbo].[MT_GREN]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_GREN]
GO
/****** Object:  Table [dbo].[MT_GRE2]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_GRE2]
GO
/****** Object:  Table [dbo].[MT_GRE1]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_GRE1]
GO
/****** Object:  Table [dbo].[MT_Extra_Service_Special_Lists]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_Extra_Service_Special_Lists]
GO
/****** Object:  Table [dbo].[MT_E168]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_E168]
GO
/****** Object:  Table [dbo].[MT_E167]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_E167]
GO
/****** Object:  Table [dbo].[MT_E152]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_E152]
GO
/****** Object:  Table [dbo].[MT_E151]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_E151]
GO
/****** Object:  Table [dbo].[MT_E149]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_E149]
GO
/****** Object:  Table [dbo].[MT_E123]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_E123]
GO
/****** Object:  Table [dbo].[MT_DVIP]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_DVIP]
GO
/****** Object:  Table [dbo].[MT_DOTS]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_DOTS]
GO
/****** Object:  Table [dbo].[MT_DOME]    Script Date: 2020/12/22 上午 11:24:27 ******/
DROP TABLE [dbo].[MT_DOME]
GO
/****** Object:  Table [dbo].[MT_DOLG]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_DOLG]
GO
/****** Object:  Table [dbo].[MT_Dodoms]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_Dodoms]
GO
/****** Object:  Table [dbo].[MT_Dodomf]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_Dodomf]
GO
/****** Object:  Table [dbo].[MT_Dodome]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_Dodome]
GO
/****** Object:  Table [dbo].[MT_DODO]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_DODO]
GO
/****** Object:  Table [dbo].[MT_DODD]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_DODD]
GO
/****** Object:  Table [dbo].[MT_DOBS]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_DOBS]
GO
/****** Object:  Table [dbo].[MT_DOBF]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_DOBF]
GO
/****** Object:  Table [dbo].[MT_CUST]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_CUST]
GO
/****** Object:  Table [dbo].[MT_CODE]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_CODE]
GO
/****** Object:  Table [dbo].[MT_CARD]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_CARD]
GO
/****** Object:  Table [dbo].[MT_CALT]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_CALT]
GO
/****** Object:  Table [dbo].[MT_C147]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_C147]
GO
/****** Object:  Table [dbo].[MT_BMSG]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_BMSG]
GO
/****** Object:  Table [dbo].[MT_B233A]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_B233A]
GO
/****** Object:  Table [dbo].[MT_B162]    Script Date: 2020/12/22 上午 11:24:28 ******/
DROP TABLE [dbo].[MT_B162]
GO
/****** Object:  Table [dbo].[MT_AULG]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MT_AULG]
GO
/****** Object:  Table [dbo].[MT_ARMX]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MT_ARMX]
GO
/****** Object:  Table [dbo].[MT_APAN]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MT_APAN]
GO
/****** Object:  Table [dbo].[MT_ACCT]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MT_ACCT]
GO
/****** Object:  Table [dbo].[MH_XTMS]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MH_XTMS]
GO
/****** Object:  Table [dbo].[MH_XTMD]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MH_XTMD]
GO
/****** Object:  Table [dbo].[MH_TRAN]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MH_TRAN]
GO
/****** Object:  Table [dbo].[MH_TPAN]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MH_TPAN]
GO
/****** Object:  Table [dbo].[MH_STBO]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MH_STBO]
GO
/****** Object:  Table [dbo].[MH_SPRES]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MH_SPRES]
GO
/****** Object:  Table [dbo].[MH_SKUP]    Script Date: 2020/12/22 上午 11:24:29 ******/
DROP TABLE [dbo].[MH_SKUP]
GO
/****** Object:  Table [dbo].[MH_SKSD]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_SKSD]
GO
/****** Object:  Table [dbo].[MH_RELP]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_RELP]
GO
/****** Object:  Table [dbo].[MH_PUBL]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_PUBL]
GO
/****** Object:  Table [dbo].[MH_PTWH]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_PTWH]
GO
/****** Object:  Table [dbo].[MH_PREU]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_PREU]
GO
/****** Object:  Table [dbo].[MH_MMIR]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_MMIR]
GO
/****** Object:  Table [dbo].[MH_MITM]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_MITM]
GO
/****** Object:  Table [dbo].[MH_MIRH]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_MIRH]
GO
/****** Object:  Table [dbo].[MH_MICLP]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_MICLP]
GO
/****** Object:  Table [dbo].[MH_MDOTS]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_MDOTS]
GO
/****** Object:  Table [dbo].[MH_MCODE]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_MCODE]
GO
/****** Object:  Table [dbo].[MH_Macotrn]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_Macotrn]
GO
/****** Object:  Table [dbo].[MH_LOGO]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_LOGO]
GO
/****** Object:  Table [dbo].[MH_Jcsgre2]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_Jcsgre2]
GO
/****** Object:  Table [dbo].[MH_Jcsgre1]    Script Date: 2020/12/22 上午 11:24:30 ******/
DROP TABLE [dbo].[MH_Jcsgre1]
GO
/****** Object:  Table [dbo].[MH_Jaam]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_Jaam]
GO
/****** Object:  Table [dbo].[MH_J144]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_J144]
GO
/****** Object:  Table [dbo].[MH_J053]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_J053]
GO
/****** Object:  Table [dbo].[MH_INST]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_INST]
GO
/****** Object:  Table [dbo].[MH_ICLP]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_ICLP]
GO
/****** Object:  Table [dbo].[MH_ICLGUL]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_ICLGUL]
GO
/****** Object:  Table [dbo].[MH_ICLG]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_ICLG]
GO
/****** Object:  Table [dbo].[MH_GREN]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_GREN]
GO
/****** Object:  Table [dbo].[MH_GRE2]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_GRE2]
GO
/****** Object:  Table [dbo].[MH_GRE1]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_GRE1]
GO
/****** Object:  Table [dbo].[MH_E168]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_E168]
GO
/****** Object:  Table [dbo].[MH_E167]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_E167]
GO
/****** Object:  Table [dbo].[MH_E152]    Script Date: 2020/12/22 上午 11:24:31 ******/
DROP TABLE [dbo].[MH_E152]
GO
/****** Object:  Table [dbo].[MH_E151]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_E151]
GO
/****** Object:  Table [dbo].[MH_E149]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_E149]
GO
/****** Object:  Table [dbo].[MH_E123]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_E123]
GO
/****** Object:  Table [dbo].[MH_DVIP]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_DVIP]
GO
/****** Object:  Table [dbo].[MH_DOTS]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_DOTS]
GO
/****** Object:  Table [dbo].[MH_DOLG]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_DOLG]
GO
/****** Object:  Table [dbo].[MH_DODO]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_DODO]
GO
/****** Object:  Table [dbo].[MH_DODD]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_DODD]
GO
/****** Object:  Table [dbo].[MH_DOBS]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_DOBS]
GO
/****** Object:  Table [dbo].[MH_DOBF]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_DOBF]
GO
/****** Object:  Table [dbo].[MH_CUST]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_CUST]
GO
/****** Object:  Table [dbo].[MH_CODE]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_CODE]
GO
/****** Object:  Table [dbo].[MH_CARD]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_CARD]
GO
/****** Object:  Table [dbo].[MH_CALT]    Script Date: 2020/12/22 上午 11:24:32 ******/
DROP TABLE [dbo].[MH_CALT]
GO
/****** Object:  Table [dbo].[MH_C147]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_C147]
GO
/****** Object:  Table [dbo].[MH_BMSG]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_BMSG]
GO
/****** Object:  Table [dbo].[MH_B233A]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_B233A]
GO
/****** Object:  Table [dbo].[MH_B162]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_B162]
GO
/****** Object:  Table [dbo].[MH_AULG]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_AULG]
GO
/****** Object:  Table [dbo].[MH_ARMX]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_ARMX]
GO
/****** Object:  Table [dbo].[MH_APAN]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_APAN]
GO
/****** Object:  Table [dbo].[MH_ACCT]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[MH_ACCT]
GO
/****** Object:  Table [dbo].[M_Year_Priority_Pass]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_Year_Priority_Pass]
GO
/****** Object:  Table [dbo].[M_Year_Extra_Service_Level_Card]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_Year_Extra_Service_Level_Card]
GO
/****** Object:  Table [dbo].[M_Year_Extra_Service_Level_Account]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_Year_Extra_Service_Level_Account]
GO
/****** Object:  Table [dbo].[M_Year_Consumption_Card]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_Year_Consumption_Card]
GO
/****** Object:  Table [dbo].[M_Year_Consumption_Account]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_Year_Consumption_Account]
GO
/****** Object:  Table [dbo].[M_XTMS_MIATC]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_XTMS_MIATC]
GO
/****** Object:  Table [dbo].[M_XTMS_JOCS]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_XTMS_JOCS]
GO
/****** Object:  Table [dbo].[M_XTMS_DIFF]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_XTMS_DIFF]
GO
/****** Object:  Table [dbo].[M_XTMS]    Script Date: 2020/12/22 上午 11:24:33 ******/
DROP TABLE [dbo].[M_XTMS]
GO
/****** Object:  Table [dbo].[M_XTMD_MIATC]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_XTMD_MIATC]
GO
/****** Object:  Table [dbo].[M_XTMD_JOCS]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_XTMD_JOCS]
GO
/****** Object:  Table [dbo].[M_XTMD_DIFF]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_XTMD_DIFF]
GO
/****** Object:  Table [dbo].[M_XTMD]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_XTMD]
GO
/****** Object:  Table [dbo].[M_Vendor_Contact_Info]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_Vendor_Contact_Info]
GO
/****** Object:  Table [dbo].[M_Vendor]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_Vendor]
GO
/****** Object:  Table [dbo].[M_UPXTMR]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_UPXTMR]
GO
/****** Object:  Table [dbo].[M_UPXTMA]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_UPXTMA]
GO
/****** Object:  Table [dbo].[M_UPDODC]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_UPDODC]
GO
/****** Object:  Table [dbo].[M_UPDODA]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_UPDODA]
GO
/****** Object:  Table [dbo].[M_Travel_Fee]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_Travel_Fee]
GO
/****** Object:  Table [dbo].[M_TRAN_MIATC]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_TRAN_MIATC]
GO
/****** Object:  Table [dbo].[M_TRAN_JOCS]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_TRAN_JOCS]
GO
/****** Object:  Table [dbo].[M_Tran_Group_Name]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_Tran_Group_Name]
GO
/****** Object:  Table [dbo].[M_Tran_Group_Mcht]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_Tran_Group_Mcht]
GO
/****** Object:  Table [dbo].[M_Tran_Group_Mcc]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_Tran_Group_Mcc]
GO
/****** Object:  Table [dbo].[M_Tran_Group_Item]    Script Date: 2020/12/22 上午 11:24:34 ******/
DROP TABLE [dbo].[M_Tran_Group_Item]
GO
/****** Object:  Table [dbo].[M_Tran_Group]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Tran_Group]
GO
/****** Object:  Table [dbo].[M_TRAN_DIFF]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_TRAN_DIFF]
GO
/****** Object:  Table [dbo].[M_Tran_Code_Reverse]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Tran_Code_Reverse]
GO
/****** Object:  Table [dbo].[M_Tran_Code]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Tran_Code]
GO
/****** Object:  Table [dbo].[M_TRAN_BILLING]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_TRAN_BILLING]
GO
/****** Object:  Table [dbo].[M_TPAN]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_TPAN]
GO
/****** Object:  Table [dbo].[M_Table_Definition]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Table_Definition]
GO
/****** Object:  Table [dbo].[M_STBO]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_STBO]
GO
/****** Object:  Table [dbo].[M_SPRES]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_SPRES]
GO
/****** Object:  Table [dbo].[M_SKUP_RETN]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_SKUP_RETN]
GO
/****** Object:  Table [dbo].[M_SKUP_FEBK]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_SKUP_FEBK]
GO
/****** Object:  Table [dbo].[M_SKSD_RETN]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_SKSD_RETN]
GO
/****** Object:  Table [dbo].[M_Settlement_File_Dtl]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Settlement_File_Dtl]
GO
/****** Object:  Table [dbo].[M_Settlement_File]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Settlement_File]
GO
/****** Object:  Table [dbo].[M_Role_Employee]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Role_Employee]
GO
/****** Object:  Table [dbo].[M_Role]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Role]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Trans_Static_Card]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:24:35 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Trans_Static_Account]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Trans]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Trans]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Reg_H]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Reg_H]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Reg]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Reg]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Level_Code]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Level_Code]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Level]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Level]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Code]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Roadside_Assistance_Code]
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Roadside_Assistance]
GO
/****** Object:  Table [dbo].[M_Reward_Mcht]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Reward_Mcht]
GO
/****** Object:  Table [dbo].[M_Reward_Mcc]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Reward_Mcc]
GO
/****** Object:  Table [dbo].[M_Reward]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Reward]
GO
/****** Object:  Table [dbo].[M_Report_Param_Value]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Report_Param_Value]
GO
/****** Object:  Table [dbo].[M_Report_Param]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Report_Param]
GO
/****** Object:  Table [dbo].[M_REP0046_UPLOAD]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_REP0046_UPLOAD]
GO
/****** Object:  Table [dbo].[M_REP0045_UPLOAD]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_REP0045_UPLOAD]
GO
/****** Object:  Table [dbo].[M_RELP_MIATC]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_RELP_MIATC]
GO
/****** Object:  Table [dbo].[M_RELP_JOCS]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_RELP_JOCS]
GO
/****** Object:  Table [dbo].[M_RELP_DIFF]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_RELP_DIFF]
GO
/****** Object:  Table [dbo].[M_Relationship]    Script Date: 2020/12/22 上午 11:24:36 ******/
DROP TABLE [dbo].[M_Relationship]
GO
/****** Object:  Table [dbo].[M_Red_Commodity_Upload]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Red_Commodity_Upload]
GO
/****** Object:  Table [dbo].[M_Red_Commodity_Order]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Red_Commodity_Order]
GO
/****** Object:  Table [dbo].[M_Red_Commodity_CardProd]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Red_Commodity_CardProd]
GO
/****** Object:  Table [dbo].[M_Red_Commodity]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Red_Commodity]
GO
/****** Object:  Table [dbo].[M_Red_CashPoints_Order]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Red_CashPoints_Order]
GO
/****** Object:  Table [dbo].[M_RDOT]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_RDOT]
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_VIP]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Public_Auto_Payment_VIP]
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Trans]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Public_Auto_Payment_Trans]
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Product]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Public_Auto_Payment_Product]
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Plan]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Public_Auto_Payment_Plan]
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Item]    Script Date: 2020/12/22 上午 11:24:37 ******/
DROP TABLE [dbo].[M_Public_Auto_Payment_Item]
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Feedback]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_Public_Auto_Payment_Feedback]
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_Public_Auto_Payment]
GO
/****** Object:  Table [dbo].[M_PUBL_MIATC]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_PUBL_MIATC]
GO
/****** Object:  Table [dbo].[M_PUBL_JOCS]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_PUBL_JOCS]
GO
/****** Object:  Table [dbo].[M_PUBL_DIFF]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_PUBL_DIFF]
GO
/****** Object:  Table [dbo].[M_PTWH]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_PTWH]
GO
/****** Object:  Table [dbo].[M_Promotion_Times]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_Promotion_Times]
GO
/****** Object:  Table [dbo].[M_Promotion_Product]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_Promotion_Product]
GO
/****** Object:  Table [dbo].[M_Promotion_Plan]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_Promotion_Plan]
GO
/****** Object:  Table [dbo].[M_Promotion_Mcht]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_Promotion_Mcht]
GO
/****** Object:  Table [dbo].[M_Promotion_MCC]    Script Date: 2020/12/22 上午 11:24:38 ******/
DROP TABLE [dbo].[M_Promotion_MCC]
GO
/****** Object:  Table [dbo].[M_Promotion_Currency]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Promotion_Currency]
GO
/****** Object:  Table [dbo].[M_Promotion_Country]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Promotion_Country]
GO
/****** Object:  Table [dbo].[M_Promotion]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Promotion]
GO
/****** Object:  Table [dbo].[M_Product_Loyalty_Project]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Product_Loyalty_Project]
GO
/****** Object:  Table [dbo].[M_Product_Extra_Service_Logo]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Product_Extra_Service_Logo]
GO
/****** Object:  Table [dbo].[M_Product_Extra_Service_Item]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Product_Extra_Service_Item]
GO
/****** Object:  Table [dbo].[M_Product_Extra_Service]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Product_Extra_Service]
GO
/****** Object:  Table [dbo].[M_Priority_Pass]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Priority_Pass]
GO
/****** Object:  Table [dbo].[M_Price_Matching_VIP]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_VIP]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Trans]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_Trans]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Redeem_Mcht]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_Redeem_Mcht]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Redeem_Mcc]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_Redeem_Mcc]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Product]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_Product]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Plan]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_Plan]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Period]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_Period]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Mcht_Louisa]    Script Date: 2020/12/22 上午 11:24:39 ******/
DROP TABLE [dbo].[M_Price_Matching_Mcht_Louisa]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Mcht]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_Price_Matching_Mcht]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Mcc]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_Price_Matching_Mcc]
GO
/****** Object:  Table [dbo].[M_PRICE_MATCHING_LOUISA]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_PRICE_MATCHING_LOUISA]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Inst_Plan]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_Price_Matching_Inst_Plan]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Currency]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_Price_Matching_Currency]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Country]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_Price_Matching_Country]
GO
/****** Object:  Table [dbo].[M_Price_Matching_Budget]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_Price_Matching_Budget]
GO
/****** Object:  Table [dbo].[M_Price_Matching]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_Price_Matching]
GO
/****** Object:  Table [dbo].[M_PREX]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_PREX]
GO
/****** Object:  Table [dbo].[M_PREU_MIATC]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_PREU_MIATC]
GO
/****** Object:  Table [dbo].[M_PREU_JOCS]    Script Date: 2020/12/22 上午 11:24:40 ******/
DROP TABLE [dbo].[M_PREU_JOCS]
GO
/****** Object:  Table [dbo].[M_PREU_DIFF]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_PREU_DIFF]
GO
/****** Object:  Table [dbo].[M_PRBI]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_PRBI]
GO
/****** Object:  Table [dbo].[M_Point_Trans_History]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Point_Trans_History]
GO
/****** Object:  Table [dbo].[M_Point_Exchange_Product]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Point_Exchange_Product]
GO
/****** Object:  Table [dbo].[M_Point_Exchange]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Point_Exchange]
GO
/****** Object:  Table [dbo].[M_Point_Balance_Hist]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Point_Balance_Hist]
GO
/****** Object:  Table [dbo].[M_Point_Balance]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Point_Balance]
GO
/****** Object:  Table [dbo].[M_Point_Adjustment]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Point_Adjustment]
GO
/****** Object:  Table [dbo].[M_Plan_Register_VIP]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Plan_Register_VIP]
GO
/****** Object:  Table [dbo].[M_Plan_Register_Quota]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Plan_Register_Quota]
GO
/****** Object:  Table [dbo].[M_Plan_Register_Lists_H]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Plan_Register_Lists_H]
GO
/****** Object:  Table [dbo].[M_Plan_Register_Lists]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Plan_Register_Lists]
GO
/****** Object:  Table [dbo].[M_Plan_Register]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Plan_Register]
GO
/****** Object:  Table [dbo].[M_Pay_Tax_VIP]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Pay_Tax_VIP]
GO
/****** Object:  Table [dbo].[M_Pay_Tax_Product]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Pay_Tax_Product]
GO
/****** Object:  Table [dbo].[M_Pay_Tax_Plan]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Pay_Tax_Plan]
GO
/****** Object:  Table [dbo].[M_Pay_Tax_Mcht]    Script Date: 2020/12/22 上午 11:24:41 ******/
DROP TABLE [dbo].[M_Pay_Tax_Mcht]
GO
/****** Object:  Table [dbo].[M_Pay_Tax_MCC]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_Pay_Tax_MCC]
GO
/****** Object:  Table [dbo].[M_Pay_Tax]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_Pay_Tax]
GO
/****** Object:  Table [dbo].[M_Param]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_Param]
GO
/****** Object:  Table [dbo].[M_New_Card_Reward]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_New_Card_Reward]
GO
/****** Object:  Table [dbo].[M_New_Card_Product]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_New_Card_Product]
GO
/****** Object:  Table [dbo].[M_New_Card_Mcht]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_New_Card_Mcht]
GO
/****** Object:  Table [dbo].[M_New_Card_Channel]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_New_Card_Channel]
GO
/****** Object:  Table [dbo].[M_New_Card_Bonus_Trans]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_New_Card_Bonus_Trans]
GO
/****** Object:  Table [dbo].[M_New_Card_Bonus]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_New_Card_Bonus]
GO
/****** Object:  Table [dbo].[M_Net24_Send]    Script Date: 2020/12/22 上午 11:24:42 ******/
DROP TABLE [dbo].[M_Net24_Send]
GO
/****** Object:  Table [dbo].[M_Net24_Rec]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Net24_Rec]
GO
/****** Object:  Table [dbo].[M_Net19_Send]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Net19_Send]
GO
/****** Object:  Table [dbo].[M_Net19_Rec]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Net19_Rec]
GO
/****** Object:  Table [dbo].[M_Net07_Send]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Net07_Send]
GO
/****** Object:  Table [dbo].[M_Net07_Rec]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Net07_Rec]
GO
/****** Object:  Table [dbo].[M_Net06_Send]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Net06_Send]
GO
/****** Object:  Table [dbo].[M_Net06_Rec]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Net06_Rec]
GO
/****** Object:  Table [dbo].[M_MPRES]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_MPRES]
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Product]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Movie_Activity_Product]
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Plan]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Movie_Activity_Plan]
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Mcht]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Movie_Activity_Mcht]
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Mcc]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Movie_Activity_Mcc]
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Feedback]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Movie_Activity_Feedback]
GO
/****** Object:  Table [dbo].[M_Movie_Activity]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Movie_Activity]
GO
/****** Object:  Table [dbo].[M_Monthly_Point]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_Monthly_Point]
GO
/****** Object:  Table [dbo].[M_MMIR]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_MMIR]
GO
/****** Object:  Table [dbo].[M_MITM]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_MITM]
GO
/****** Object:  Table [dbo].[M_MIRH_MIATC]    Script Date: 2020/12/22 上午 11:24:43 ******/
DROP TABLE [dbo].[M_MIRH_MIATC]
GO
/****** Object:  Table [dbo].[M_MIRH_JOCS]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MIRH_JOCS]
GO
/****** Object:  Table [dbo].[M_MIRH_DIFF]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MIRH_DIFF]
GO
/****** Object:  Table [dbo].[M_MILES_EXTRA]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MILES_EXTRA]
GO
/****** Object:  Table [dbo].[M_Mileage_Bonus]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Mileage_Bonus]
GO
/****** Object:  Table [dbo].[M_Menu]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Menu]
GO
/****** Object:  Table [dbo].[M_Member_Zone_Message_Detail]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Member_Zone_Message_Detail]
GO
/****** Object:  Table [dbo].[M_Member_Zone_Message]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Member_Zone_Message]
GO
/****** Object:  Table [dbo].[M_Member_Get_Member]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Member_Get_Member]
GO
/****** Object:  Table [dbo].[M_Member_Airline]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Member_Airline]
GO
/****** Object:  Table [dbo].[M_MDOTS]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MDOTS]
GO
/****** Object:  Table [dbo].[M_MCODE_MIATC]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MCODE_MIATC]
GO
/****** Object:  Table [dbo].[M_MCODE_JOCS]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MCODE_JOCS]
GO
/****** Object:  Table [dbo].[M_MCODE_DIFF]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MCODE_DIFF]
GO
/****** Object:  Table [dbo].[M_MCHT_FEE]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MCHT_FEE]
GO
/****** Object:  Table [dbo].[M_MCC_CODE]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_MCC_CODE]
GO
/****** Object:  Table [dbo].[M_Marketing_Promotion]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Marketing_Promotion]
GO
/****** Object:  Table [dbo].[M_Marketing_Price_Matching]    Script Date: 2020/12/22 上午 11:24:44 ******/
DROP TABLE [dbo].[M_Marketing_Price_Matching]
GO
/****** Object:  Table [dbo].[M_Marketing]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Marketing]
GO
/****** Object:  Table [dbo].[M_Macotrn]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Macotrn]
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Product]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Loyalty_Project_Product]
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Plan]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Loyalty_Project_Plan]
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Mcht]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Loyalty_Project_Mcht]
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Mcc]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Loyalty_Project_Mcc]
GO
/****** Object:  Table [dbo].[M_Loyalty_Project]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Loyalty_Project]
GO
/****** Object:  Table [dbo].[M_Lookup_Type]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Lookup_Type]
GO
/****** Object:  Table [dbo].[M_Lookup_Code]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Lookup_Code]
GO
/****** Object:  Table [dbo].[M_Logo_Report_Group]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Logo_Report_Group]
GO
/****** Object:  Table [dbo].[M_Logo_Group]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_Logo_Group]
GO
/****** Object:  Table [dbo].[M_LIST_UPLOAD]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_LIST_UPLOAD]
GO
/****** Object:  Table [dbo].[M_JCSXTMS1]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_JCSXTMS1]
GO
/****** Object:  Table [dbo].[M_JCSXTMS]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_JCSXTMS]
GO
/****** Object:  Table [dbo].[M_JCSTMT_Output]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_JCSTMT_Output]
GO
/****** Object:  Table [dbo].[M_JCSTMT]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_JCSTMT]
GO
/****** Object:  Table [dbo].[M_JCSSTMD]    Script Date: 2020/12/22 上午 11:24:45 ******/
DROP TABLE [dbo].[M_JCSSTMD]
GO
/****** Object:  Table [dbo].[M_JCSMITO]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_JCSMITO]
GO
/****** Object:  Table [dbo].[M_Jcsgre2]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Jcsgre2]
GO
/****** Object:  Table [dbo].[M_Jcsgre1]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Jcsgre1]
GO
/****** Object:  Table [dbo].[M_JCSDOXT]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_JCSDOXT]
GO
/****** Object:  Table [dbo].[M_JCSD150]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_JCSD150]
GO
/****** Object:  Table [dbo].[M_Jaam]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Jaam]
GO
/****** Object:  Table [dbo].[M_J144]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_J144]
GO
/****** Object:  Table [dbo].[M_J053]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_J053]
GO
/****** Object:  Table [dbo].[M_Ivr018_Send]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Ivr018_Send]
GO
/****** Object:  Table [dbo].[M_Ivr018_Rec]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Ivr018_Rec]
GO
/****** Object:  Table [dbo].[M_Ivr004_Send]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Ivr004_Send]
GO
/****** Object:  Table [dbo].[M_Ivr004_Rec]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Ivr004_Rec]
GO
/****** Object:  Table [dbo].[M_Ivr003_Send]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Ivr003_Send]
GO
/****** Object:  Table [dbo].[M_Ivr003_Rec]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Ivr003_Rec]
GO
/****** Object:  Table [dbo].[M_Installment_Trans]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Installment_Trans]
GO
/****** Object:  Table [dbo].[M_Installment_Period]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Installment_Period]
GO
/****** Object:  Table [dbo].[M_Installment]    Script Date: 2020/12/22 上午 11:24:46 ******/
DROP TABLE [dbo].[M_Installment]
GO
/****** Object:  Table [dbo].[M_INST_MIATC]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_INST_MIATC]
GO
/****** Object:  Table [dbo].[M_INST_JOCS]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_INST_JOCS]
GO
/****** Object:  Table [dbo].[M_INST_DIFF]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_INST_DIFF]
GO
/****** Object:  Table [dbo].[M_ICLP_MIATC]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLP_MIATC]
GO
/****** Object:  Table [dbo].[M_ICLP_JOCS]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLP_JOCS]
GO
/****** Object:  Table [dbo].[M_ICLP_DIFF]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLP_DIFF]
GO
/****** Object:  Table [dbo].[M_ICLGUL]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLGUL]
GO
/****** Object:  Table [dbo].[M_ICLG_MIATC]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLG_MIATC]
GO
/****** Object:  Table [dbo].[M_ICLG_JOCS]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLG_JOCS]
GO
/****** Object:  Table [dbo].[M_ICLG_DIFF]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLG_DIFF]
GO
/****** Object:  Table [dbo].[M_ICLG]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_ICLG]
GO
/****** Object:  Table [dbo].[M_High_SR_CardProd]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_High_SR_CardProd]
GO
/****** Object:  Table [dbo].[M_High_Speed_Rail_Freetime]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_High_Speed_Rail_Freetime]
GO
/****** Object:  Table [dbo].[M_High_Speed_Rail]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_High_Speed_Rail]
GO
/****** Object:  Table [dbo].[M_GRE2]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_GRE2]
GO
/****** Object:  Table [dbo].[M_GRE1]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_GRE1]
GO
/****** Object:  Table [dbo].[M_Gift_Voucher_Location]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_Gift_Voucher_Location]
GO
/****** Object:  Table [dbo].[M_Gift_Voucher]    Script Date: 2020/12/22 上午 11:24:47 ******/
DROP TABLE [dbo].[M_Gift_Voucher]
GO
/****** Object:  Table [dbo].[M_Gift_Txn_Location]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Gift_Txn_Location]
GO
/****** Object:  Table [dbo].[M_Gift_Txn]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Gift_Txn]
GO
/****** Object:  Table [dbo].[M_Gift_Location]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Gift_Location]
GO
/****** Object:  Table [dbo].[M_Gift_Inv]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Gift_Inv]
GO
/****** Object:  Table [dbo].[M_Gift]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Gift]
GO
/****** Object:  Table [dbo].[M_FEBK]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_FEBK]
GO
/****** Object:  Table [dbo].[M_Extra_Service_Special_Lists]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Extra_Service_Special_Lists]
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level_Tran]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Extra_Service_Level_Tran]
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level_NdTh]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Extra_Service_Level_NdTh]
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level_F]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Extra_Service_Level_F]
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Extra_Service_Level]
GO
/****** Object:  Table [dbo].[M_Error_Message]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Error_Message]
GO
/****** Object:  Table [dbo].[M_Employee]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_Employee]
GO
/****** Object:  Table [dbo].[M_eBilling_Trans]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_eBilling_Trans]
GO
/****** Object:  Table [dbo].[M_eBilling_Product]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_eBilling_Product]
GO
/****** Object:  Table [dbo].[M_eBilling_Plan]    Script Date: 2020/12/22 上午 11:24:48 ******/
DROP TABLE [dbo].[M_eBilling_Plan]
GO
/****** Object:  Table [dbo].[M_eBilling]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_eBilling]
GO
/****** Object:  Table [dbo].[M_E168]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_E168]
GO
/****** Object:  Table [dbo].[M_E167]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_E167]
GO
/****** Object:  Table [dbo].[M_E152]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_E152]
GO
/****** Object:  Table [dbo].[M_E151]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_E151]
GO
/****** Object:  Table [dbo].[M_E149]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_E149]
GO
/****** Object:  Table [dbo].[M_E123]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_E123]
GO
/****** Object:  Table [dbo].[M_DVIP_MIATC]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_DVIP_MIATC]
GO
/****** Object:  Table [dbo].[M_DVIP_JOCS]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_DVIP_JOCS]
GO
/****** Object:  Table [dbo].[M_DVIP_DIFF]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_DVIP_DIFF]
GO
/****** Object:  Table [dbo].[M_DVIP]    Script Date: 2020/12/22 上午 11:24:49 ******/
DROP TABLE [dbo].[M_DVIP]
GO
/****** Object:  Table [dbo].[M_DOTS_MIATC]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOTS_MIATC]
GO
/****** Object:  Table [dbo].[M_DOTS_JOCS]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOTS_JOCS]
GO
/****** Object:  Table [dbo].[M_DOTS_DIFF]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOTS_DIFF]
GO
/****** Object:  Table [dbo].[M_DOT03_SEND]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOT03_SEND]
GO
/****** Object:  Table [dbo].[M_DOT03_REC]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOT03_REC]
GO
/****** Object:  Table [dbo].[M_Dot02_Rec]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_Dot02_Rec]
GO
/****** Object:  Table [dbo].[M_Dot01_Send]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_Dot01_Send]
GO
/****** Object:  Table [dbo].[M_Dot01_Rec]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_Dot01_Rec]
GO
/****** Object:  Table [dbo].[M_DOST_TEST]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOST_TEST]
GO
/****** Object:  Table [dbo].[M_DOST]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOST]
GO
/****** Object:  Table [dbo].[M_DOME]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DOME]
GO
/****** Object:  Table [dbo].[M_DODO_MIATC]    Script Date: 2020/12/22 上午 11:24:50 ******/
DROP TABLE [dbo].[M_DODO_MIATC]
GO
/****** Object:  Table [dbo].[M_DODO_JOCS]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODO_JOCS]
GO
/****** Object:  Table [dbo].[M_DODO_DIFF]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODO_DIFF]
GO
/****** Object:  Table [dbo].[M_DODO]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODO]
GO
/****** Object:  Table [dbo].[M_DODD1_MIATC]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODD1_MIATC]
GO
/****** Object:  Table [dbo].[M_DODD1_JOCS]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODD1_JOCS]
GO
/****** Object:  Table [dbo].[M_DODD1_DIFF]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODD1_DIFF]
GO
/****** Object:  Table [dbo].[M_DODD_MIATC]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODD_MIATC]
GO
/****** Object:  Table [dbo].[M_DODD_JOCS]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODD_JOCS]
GO
/****** Object:  Table [dbo].[M_DODD_DIFF]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODD_DIFF]
GO
/****** Object:  Table [dbo].[M_DODD]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DODD]
GO
/****** Object:  Table [dbo].[M_DOBS]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DOBS]
GO
/****** Object:  Table [dbo].[M_DOBF]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_DOBF]
GO
/****** Object:  Table [dbo].[M_Dept_Store_Mcht]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_Dept_Store_Mcht]
GO
/****** Object:  Table [dbo].[M_Dept_Store]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_Dept_Store]
GO
/****** Object:  Table [dbo].[M_Department]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_Department]
GO
/****** Object:  Table [dbo].[M_Dante_Adjustment]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_Dante_Adjustment]
GO
/****** Object:  Table [dbo].[M_Daily_Extra_Service_Level_Card]    Script Date: 2020/12/22 上午 11:24:51 ******/
DROP TABLE [dbo].[M_Daily_Extra_Service_Level_Card]
GO
/****** Object:  Table [dbo].[M_Daily_Extra_Service_Level_Account]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Daily_Extra_Service_Level_Account]
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Card]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Daily_Consumption_Card]
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Auth_Card]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Daily_Consumption_Auth_Card]
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Auth_Account]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Daily_Consumption_Auth_Account]
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Account]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Daily_Consumption_Account]
GO
/****** Object:  Table [dbo].[M_Daily_Card_Point]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Daily_Card_Point]
GO
/****** Object:  Table [dbo].[M_CYCLE_RESULT_STATIC]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_CYCLE_RESULT_STATIC]
GO
/****** Object:  Table [dbo].[M_CUST_MIATC]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_CUST_MIATC]
GO
/****** Object:  Table [dbo].[M_CUST_JOCS]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_CUST_JOCS]
GO
/****** Object:  Table [dbo].[M_CUST_DIFF]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_CUST_DIFF]
GO
/****** Object:  Table [dbo].[M_Cooperative_Product]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Cooperative_Product]
GO
/****** Object:  Table [dbo].[M_Cooperative_Commision]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Cooperative_Commision]
GO
/****** Object:  Table [dbo].[M_Cooperative]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_Cooperative]
GO
/****** Object:  Table [dbo].[M_CODE_MIATC]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_CODE_MIATC]
GO
/****** Object:  Table [dbo].[M_CODE_JOCS]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_CODE_JOCS]
GO
/****** Object:  Table [dbo].[M_CODE_DIFF]    Script Date: 2020/12/22 上午 11:24:52 ******/
DROP TABLE [dbo].[M_CODE_DIFF]
GO
/****** Object:  Table [dbo].[M_Co_Branding_Product]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Co_Branding_Product]
GO
/****** Object:  Table [dbo].[M_Co_Branding_Mcht]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Co_Branding_Mcht]
GO
/****** Object:  Table [dbo].[M_Co_Branding]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Co_Branding]
GO
/****** Object:  Table [dbo].[M_CDPA]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_CDPA]
GO
/****** Object:  Table [dbo].[M_Cash_Back_Redeem_Mcht]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Cash_Back_Redeem_Mcht]
GO
/****** Object:  Table [dbo].[M_Cash_Back_Product]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Cash_Back_Product]
GO
/****** Object:  Table [dbo].[M_Cash_Back_Plan]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Cash_Back_Plan]
GO
/****** Object:  Table [dbo].[M_Cash_Back_Period]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Cash_Back_Period]
GO
/****** Object:  Table [dbo].[M_Cash_Back_Mcht]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Cash_Back_Mcht]
GO
/****** Object:  Table [dbo].[M_Cash_Back]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Cash_Back]
GO
/****** Object:  Table [dbo].[M_Cardholder]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Cardholder]
GO
/****** Object:  Table [dbo].[M_Card_Report_Detail]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Card_Report_Detail]
GO
/****** Object:  Table [dbo].[M_Card_Product]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_Card_Product]
GO
/****** Object:  Table [dbo].[M_CARD_MIATC]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_CARD_MIATC]
GO
/****** Object:  Table [dbo].[M_CARD_JOCS]    Script Date: 2020/12/22 上午 11:24:53 ******/
DROP TABLE [dbo].[M_CARD_JOCS]
GO
/****** Object:  Table [dbo].[M_Card_Holder_Billing_Detail]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Card_Holder_Billing_Detail]
GO
/****** Object:  Table [dbo].[M_CARD_DIFF]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_CARD_DIFF]
GO
/****** Object:  Table [dbo].[M_Card]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Card]
GO
/****** Object:  Table [dbo].[M_CAR_PARK_TXN_LOG]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_CAR_PARK_TXN_LOG]
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Service_Trans_Static_Card]
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Service_Trans_Static_Account]
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Trans]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Service_Trans]
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Level_Code]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Service_Level_Code]
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Level]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Service_Level]
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Code]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Service_Code]
GO
/****** Object:  Table [dbo].[M_Car_Park_Service]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Service]
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Airport_Trans_Static_Card]
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Airport_Trans_Static_Account]
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Trans]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Airport_Trans]
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Level_Code]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Airport_Level_Code]
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Level]    Script Date: 2020/12/22 上午 11:24:54 ******/
DROP TABLE [dbo].[M_Car_Park_Airport_Level]
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Code]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Car_Park_Airport_Code]
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Car_Park_Airport]
GO
/****** Object:  Table [dbo].[M_C147]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_C147]
GO
/****** Object:  Table [dbo].[M_BMSG]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_BMSG]
GO
/****** Object:  Table [dbo].[M_Birthday_VIP]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birthday_VIP]
GO
/****** Object:  Table [dbo].[M_Birthday_Reward]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birthday_Reward]
GO
/****** Object:  Table [dbo].[M_Birthday_Product]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birthday_Product]
GO
/****** Object:  Table [dbo].[M_Birthday_Plan]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birthday_Plan]
GO
/****** Object:  Table [dbo].[M_Birthday_Mcht]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birthday_Mcht]
GO
/****** Object:  Table [dbo].[M_Birthday_MCC]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birthday_MCC]
GO
/****** Object:  Table [dbo].[M_Birthday_Bonus]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birthday_Bonus]
GO
/****** Object:  Table [dbo].[M_Birth_Trans]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Birth_Trans]
GO
/****** Object:  Table [dbo].[M_Billing_Template_Image]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Billing_Template_Image]
GO
/****** Object:  Table [dbo].[M_Billing_Template_Card_Cd]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Billing_Template_Card_Cd]
GO
/****** Object:  Table [dbo].[M_Billing_Template]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Billing_Template]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_2_ID]    Script Date: 2020/12/22 上午 11:24:55 ******/
DROP TABLE [dbo].[M_Billing_Specified_2_ID]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_2]    Script Date: 2020/12/22 上午 11:24:56 ******/
DROP TABLE [dbo].[M_Billing_Specified_2]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Mcc_Code]    Script Date: 2020/12/22 上午 11:24:56 ******/
DROP TABLE [dbo].[M_Billing_Specified_1_Mcc_Code]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Image]    Script Date: 2020/12/22 上午 11:24:56 ******/
DROP TABLE [dbo].[M_Billing_Specified_1_Image]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_City]    Script Date: 2020/12/22 上午 11:24:56 ******/
DROP TABLE [dbo].[M_Billing_Specified_1_City]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Card_Type]    Script Date: 2020/12/22 上午 11:24:56 ******/
DROP TABLE [dbo].[M_Billing_Specified_1_Card_Type]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Card_Cd]    Script Date: 2020/12/22 上午 11:24:56 ******/
DROP TABLE [dbo].[M_Billing_Specified_1_Card_Cd]
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Billing_Specified_1]
GO
/****** Object:  Table [dbo].[M_Billing_Point]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Billing_Point]
GO
/****** Object:  Table [dbo].[M_Billing_Month_Event_Static]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Billing_Month_Event_Static]
GO
/****** Object:  Table [dbo].[M_Billing_Card_Logo_Group]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Billing_Card_Logo_Group]
GO
/****** Object:  Table [dbo].[M_Billing_Card_Logo]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Billing_Card_Logo]
GO
/****** Object:  Table [dbo].[M_Billboard]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Billboard]
GO
/****** Object:  Table [dbo].[M_B608]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_B608]
GO
/****** Object:  Table [dbo].[M_B162]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_B162]
GO
/****** Object:  Table [dbo].[M_Auto_Redeem_Hist]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Auto_Redeem_Hist]
GO
/****** Object:  Table [dbo].[M_Auto_Pay_Trans]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Auto_Pay_Trans]
GO
/****** Object:  Table [dbo].[M_Auto_Pay_Product]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Auto_Pay_Product]
GO
/****** Object:  Table [dbo].[M_Auto_Pay_Plan]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Auto_Pay_Plan]
GO
/****** Object:  Table [dbo].[M_Auto_Pay]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_Auto_Pay]
GO
/****** Object:  Table [dbo].[M_AULG_MIATC]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_AULG_MIATC]
GO
/****** Object:  Table [dbo].[M_AULG_JOCS]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_AULG_JOCS]
GO
/****** Object:  Table [dbo].[M_AULG_DIFF]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_AULG_DIFF]
GO
/****** Object:  Table [dbo].[M_AULG]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_AULG]
GO
/****** Object:  Table [dbo].[M_AuditTrail]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_AuditTrail]
GO
/****** Object:  Table [dbo].[M_ATBK]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_ATBK]
GO
/****** Object:  Table [dbo].[M_ARMX_MIATC]    Script Date: 2020/12/22 上午 11:24:57 ******/
DROP TABLE [dbo].[M_ARMX_MIATC]
GO
/****** Object:  Table [dbo].[M_ARMX_JOCS]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_ARMX_JOCS]
GO
/****** Object:  Table [dbo].[M_ARMX_DIFF]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_ARMX_DIFF]
GO
/****** Object:  Table [dbo].[M_App_Card_Issuer_Dtl]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_App_Card_Issuer_Dtl]
GO
/****** Object:  Table [dbo].[M_App_Card_Issuer]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_App_Card_Issuer]
GO
/****** Object:  Table [dbo].[M_APAN]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_APAN]
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_Airport_Shuttle_Trans_Static_Card]
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_Airport_Shuttle_Trans_Static_Account]
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Trans]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_Airport_Shuttle_Trans]
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Product]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_Airport_Shuttle_Product]
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Level]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_Airport_Shuttle_Level]
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Code]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_Airport_Shuttle_Code]
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle]    Script Date: 2020/12/22 上午 11:24:58 ******/
DROP TABLE [dbo].[M_Airport_Shuttle]
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_Airport_Lounge_Trans_Static_Card]
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_Airport_Lounge_Trans_Static_Account]
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Trans]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_Airport_Lounge_Trans]
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Level]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_Airport_Lounge_Level]
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Code]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_Airport_Lounge_Code]
GO
/****** Object:  Table [dbo].[M_Airport_Lounge]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_Airport_Lounge]
GO
/****** Object:  Table [dbo].[M_ACTI]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_ACTI]
GO
/****** Object:  Table [dbo].[M_ACT_LIST_DOWNLOAD]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_ACT_LIST_DOWNLOAD]
GO
/****** Object:  Table [dbo].[M_ACCT_MIATC]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_ACCT_MIATC]
GO
/****** Object:  Table [dbo].[M_ACCT_JOCS]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_ACCT_JOCS]
GO
/****** Object:  Table [dbo].[M_ACCT_DIFF]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_ACCT_DIFF]
GO
/****** Object:  Table [dbo].[M_Account]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP TABLE [dbo].[M_Account]
GO
/****** Object:  User [CDCT_WEB]    Script Date: 2020/12/22 上午 11:24:59 ******/
DROP USER [CDCT_WEB]
GO
