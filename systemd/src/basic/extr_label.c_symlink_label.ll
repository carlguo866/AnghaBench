; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_label.c_symlink_label.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_label.c_symlink_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFLNK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symlink_label(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @S_IFLNK, align 4
  %13 = call i32 @mac_selinux_create_file_prepare(i8* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @symlink(i8* %19, i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @errno, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = call i32 (...) @mac_selinux_create_file_clear()
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @mac_smack_fix(i8* %33, i32 0)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %30, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @mac_selinux_create_file_prepare(i8*, i32) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i32 @mac_selinux_create_file_clear(...) #1

declare dso_local i32 @mac_smack_fix(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
