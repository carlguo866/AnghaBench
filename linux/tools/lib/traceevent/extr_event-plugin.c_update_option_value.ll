; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_update_option_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_update_option_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_plugin_option = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_plugin_option*, i8*)* @update_option_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_option_value(%struct.tep_plugin_option* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_plugin_option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.tep_plugin_option* %0, %struct.tep_plugin_option** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %4, align 8
  %11 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %63

15:                                               ; preds = %9
  %16 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %4, align 8
  %17 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = xor i32 %18, 1
  store i32 %19, i32* %17, align 8
  store i32 0, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %4, align 8
  %22 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %4, align 8
  %28 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  store i32 0, i32* %3, align 4
  br label %63

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %63

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @lower_case(i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %35
  %46 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %4, align 8
  %47 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  br label %60

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %48
  %57 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %4, align 8
  %58 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @free(i8* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %34, %25, %15, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @lower_case(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
