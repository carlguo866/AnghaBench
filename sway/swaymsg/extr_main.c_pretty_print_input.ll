; ModuleID = '/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print_input.c'
source_filename = "/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Input device: %s\0A  Type: %s\0A  Identifier: %s\0A  Product ID: %d\0A  Vendor ID: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"xkb_active_layout_name\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"  Active Keyboard Layout: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"(unnamed)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"libinput\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"send_events\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"  Libinput Send Events: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pretty_print_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_print_input(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @json_object_object_get_ex(i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32** %3)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @json_object_object_get_ex(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %4)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @json_object_object_get_ex(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32** %5)
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @json_object_object_get_ex(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32** %6)
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @json_object_object_get_ex(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32** %7)
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @json_object_get_string(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @json_object_get_string(i32* %26)
  %28 = call i32 @pretty_type_name(i8* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @json_object_get_string(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @json_object_get_int(i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @json_object_get_int(i32* %33)
  %35 = call i32 (i8*, ...) @printf(i8* %23, i8* %25, i32 %28, i8* %30, i32 %32, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @json_object_object_get_ex(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32** %8)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load i32*, i32** %8, align 8
  %41 = call i8* @json_object_get_string(i32* %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  br label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), %46 ]
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %1
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @json_object_object_get_ex(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32** %9)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @json_object_object_get_ex(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32** %12)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = call i8* @json_object_get_string(i32* %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %50
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i64 @json_object_object_get_ex(i32*, i8*, i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @json_object_get_string(i32*) #1

declare dso_local i32 @pretty_type_name(i8*) #1

declare dso_local i32 @json_object_get_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
