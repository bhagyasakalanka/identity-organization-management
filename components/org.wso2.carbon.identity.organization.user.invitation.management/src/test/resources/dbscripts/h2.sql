CREATE TABLE IF NOT EXISTS IDN_ORG_USER_INVITATION (
    ID INTEGER NOT NULL AUTO_INCREMENT,
    INVITATION_ID VARCHAR(40) NOT NULL,
    CONFIRMATION_CODE VARCHAR(40) NOT NULL,
    USER_NAME VARCHAR(254) NOT NULL,
    DOMAIN_NAME VARCHAR(254) NOT NULL,
    EMAIL VARCHAR(254) NOT NULL,
    USER_ORG_ID VARCHAR(254) NOT NULL,
    INVITED_ORG_ID VARCHAR(254) NOT NULL,
    USER_REDIRECT_URL VARCHAR(1024) NOT NULL,
    STATUS VARCHAR(10) NOT NULL,
    CREATED_AT TIMESTAMP NOT NULL,
    EXPIRED_AT TIMESTAMP NOT NULL,
    PRIMARY KEY (INVITATION_ID)
);

CREATE TABLE IF NOT EXISTS IDN_ORG_USER_INVITE_ASSIGNMENT(
    ID INTEGER NOT NULL AUTO_INCREMENT,
    INVITATION_ID VARCHAR(40) NOT NULL,
    ASSIGNMENT_ID VARCHAR(255) NOT NULL,
    ASSIGNMENT_TYPE VARCHAR(255) NOT NULL,
    PRIMARY KEY (INVITATION_ID, ASSIGNMENT_ID),
    FOREIGN KEY (INVITATION_ID) REFERENCES IDN_ORG_USER_INVITATION(INVITATION_ID) ON DELETE CASCADE
);

