; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_gnome_keyring_result_to_message.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_gnome_keyring_result_to_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Denied\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"No Keyring Daemon\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Already UnLocked\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"No Such Keyring\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Bad Arguments\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"IO Error\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Already Exists\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Unknown Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @gnome_keyring_result_to_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gnome_keyring_result_to_message(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %14 [
    i32 128, label %5
    i32 132, label %6
    i32 130, label %7
    i32 135, label %8
    i32 129, label %9
    i32 134, label %10
    i32 131, label %11
    i32 133, label %12
    i32 136, label %13
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %15

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %15

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %15

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %15

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %15

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %15

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %15

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %15

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %15

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
