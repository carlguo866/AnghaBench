; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-service.c_bus_set_transient_std_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-service.c_bus_set_transient_std_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"h\00", align 1
@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i32*, i32, i32*)* @bus_set_transient_std_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_set_transient_std_fd(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @assert(i32* %19)
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @sd_bus_message_read(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %8, align 4
  br label %50

29:                                               ; preds = %7
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %36 = call i32 @fcntl(i32 %34, i32 %35, i32 3)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @errno, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %50

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @asynchronous_close(i32 %44)
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %12, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %29
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %39, %27
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @UNIT_WRITE_FLAGS_NOOP(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @asynchronous_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
