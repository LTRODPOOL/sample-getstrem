import {
  ConsoleLogger,
  DefaultDeviceController,
  DefaultMeetingSession,
  LogLevel,
  MeetingSessionConfiguration
} from 'amazon-chime-sdk-js';

const logger = new ConsoleLogger('MyLogger', LogLevel.INFO);
const deviceController = new DefaultDeviceController(logger);

// You need responses from server-side Chime API. See below for details.
const meetingResponse = /* The response from the CreateMeeting API action */;
const attendeeResponse = /* The response from the CreateAttendee or BatchCreateAttendee API action */;
const configuration = new MeetingSessionConfiguration(meetingResponse, attendeeResponse);

// In the usage examples below, you will use this meetingSession object.
const meetingSession = new DefaultMeetingSession(
  configuration,
  logger,
  deviceController
);