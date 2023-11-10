class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Welcome to UpTodo",
    image: "assets/images/image1.png",
    desc: "Manage your tasks and stay organized with UpTodo.",
  ),
  OnboardingContents(
    title: "Create and manage tasks",
    image: "assets/images/image2.png",
    desc: "Create, edit, and delete tasks with ease.",
  ),
  OnboardingContents(
    title: "Set reminders and notifications",
    image: "assets/images/image3.png",
    desc: "Receive reminders and notifications for upcoming tasks.",
  ),
];
