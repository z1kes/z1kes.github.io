{\rtf1\ansi\ansicpg1252\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Create the database (if your hosting doesn't already provide one)\
CREATE DATABASE IF NOT EXISTS wexify_db;\
USE wexify_db;\
\
-- Create table for client inquiries\
CREATE TABLE client_inquiries (\
    id INT AUTO_INCREMENT PRIMARY KEY,\
    name VARCHAR(100) NOT NULL,\
    email VARCHAR(100) NOT NULL,\
    package VARCHAR(50) NOT NULL,\
    message TEXT NOT NULL,\
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP\
);\
\
-- Create a user with restricted permissions (optional additional security)\
CREATE USER 'wexify_user'@'localhost' IDENTIFIED BY 'your_strong_password_here';\
GRANT SELECT, INSERT ON wexify_db.client_inquiries TO 'wexify_user'@'localhost';\
FLUSH PRIVILEGES;}