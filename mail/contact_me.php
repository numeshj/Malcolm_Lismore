<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php'; // Include the PHPMailer autoload.php file

$mail = new PHPMailer(true);

try {
    // Server settings
    $mail->isSMTP();
    $mail->Host       = 'smtp.gmail.com';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'numeshjayamanne@gmail.com';
    $mail->Password   = 'Numesh228646';
    $mail->SMTPSecure = 'tls';
    $mail->Port       = 587;

    // Recipients
    $mail->setFrom('numeshjayamanne@gmail.com', 'Your Name');
    $mail->addAddress('numeshjayamanne@gmail.com');

    // Content
    $mail->isHTML(false);
    $mail->Subject = "Website Contact Form: $name";
    $mail->Body    = "You have received a new message from your website contact form.\n\n" . "Here are the details:\n\nName: $name\n\nEmail: $email_address\n\nPhone: $phone\n\nMessage:\n$message";

    $mail->send();
    echo "Email sent successfully!";
} catch (Exception $e) {
    echo "Error sending email. Please try again. Error: {$mail->ErrorInfo}";
}
?>