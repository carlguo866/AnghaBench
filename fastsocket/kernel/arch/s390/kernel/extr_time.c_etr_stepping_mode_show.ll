; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_stepping_mode_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_stepping_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysdev_class = type { i32 }

@etr_eacr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"etr\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysdev_class*, i8*)* @etr_stepping_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etr_stepping_mode_show(%struct.sysdev_class* %0, i8* %1) #0 {
  %3 = alloca %struct.sysdev_class*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.sysdev_class* %0, %struct.sysdev_class** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @etr_eacr, align 4
  %7 = call i64 @etr_mode_is_pps(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @etr_eacr, align 4
  %12 = call i64 @etr_mode_is_etr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %16

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  ret i32 %20
}

declare dso_local i64 @etr_mode_is_pps(i32) #1

declare dso_local i64 @etr_mode_is_etr(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
