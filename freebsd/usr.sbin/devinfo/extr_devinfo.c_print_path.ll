; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_dev = type { i32 }

@vflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devinfo_dev*, i8*)* @print_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_path(%struct.devinfo_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devinfo_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.devinfo_dev* %0, %struct.devinfo_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  %9 = load %struct.devinfo_dev*, %struct.devinfo_dev** %4, align 8
  %10 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strcmp(i32 %11, i8* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.devinfo_dev*, %struct.devinfo_dev** %4, align 8
  %17 = call i32 @print_dev(%struct.devinfo_dev* %16)
  %18 = load i64, i64* @vflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  store i32 1, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.devinfo_dev*, %struct.devinfo_dev** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @devinfo_foreach_device_child(%struct.devinfo_dev* %24, i32 (%struct.devinfo_dev*, i8*)* @print_path, i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.devinfo_dev*, %struct.devinfo_dev** %4, align 8
  %32 = call i32 @print_dev(%struct.devinfo_dev* %31)
  %33 = load i64, i64* @vflag, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @print_dev(%struct.devinfo_dev*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @devinfo_foreach_device_child(%struct.devinfo_dev*, i32 (%struct.devinfo_dev*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
