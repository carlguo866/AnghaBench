; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_dev_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_dev_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@efinet_dev = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"    %s%d:\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"    %S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @efinet_dev_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efinet_dev_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @efinet_dev, i32 0, i32 0), align 8
  %9 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %15 = call i32* @efi_find_handle(%struct.TYPE_3__* @efinet_dev, i32 0)
  store i32* %15, i32** %5, align 8
  br label %16

16:                                               ; preds = %42, %14
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @efinet_dev, i32 0, i32 0), align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @efi_lookup_devpath(i32* %26)
  %28 = call i8* @efi_devpath_name(i32 %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @efi_free_devpath_name(i8* %34)
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36, %19
  %38 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %46

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = call i32* @efi_find_handle(%struct.TYPE_3__* @efinet_dev, i32 %44)
  store i32* %45, i32** %5, align 8
  br label %16

46:                                               ; preds = %40, %16
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @pager_output(i8*) #1

declare dso_local i32* @efi_find_handle(%struct.TYPE_3__*, i32) #1

declare dso_local i8* @efi_devpath_name(i32) #1

declare dso_local i32 @efi_lookup_devpath(i32*) #1

declare dso_local i32 @efi_free_devpath_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
