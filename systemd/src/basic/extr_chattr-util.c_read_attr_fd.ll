; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_chattr-util.c_read_attr_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_chattr-util.c_read_attr_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@FS_IOC_GETFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_attr_fd(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @fstat(i32 %11, %struct.stat* %6)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISDIR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISREG(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOTTY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @FS_IOC_GETFLAGS, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @ioctl(i32 %31, i32 %32, i32* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @errno, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36, %27, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
