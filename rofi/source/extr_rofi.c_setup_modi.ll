; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_setup_modi.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_setup_modi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c",#\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_modi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_modi() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* null, i8** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %6 = call i8* @g_strdup(i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strtok_r(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %2)
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @add_mode(i8* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @help_print_mode_not_found(i8* %17)
  br label %19

19:                                               ; preds = %16, %12
  br label %20

20:                                               ; preds = %19
  %21 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %2)
  store i8* %21, i8** %4, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @g_free(i8* %23)
  %25 = load i32, i32* @FALSE, align 4
  ret i32 %25
}

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @add_mode(i8*) #1

declare dso_local i32 @help_print_mode_not_found(i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
