; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_set_live_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_set_live_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@UNIT_ESCAPE_SPECIFIERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Description=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32*)* @bus_unit_set_live_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_unit_set_live_property(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @streq(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @sd_bus_message_read(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %52

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @unit_set_description(i8* %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %52

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @UNIT_ESCAPE_SPECIFIERS, align 4
  %46 = or i32 %44, %45
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @unit_write_settingf(i8* %43, i32 %46, i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %42, %30
  store i32 1, i32* %6, align 4
  br label %52

51:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %50, %40, %28
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_read(i8*, i8*, i8**) #1

declare dso_local i32 @UNIT_WRITE_FLAGS_NOOP(i32) #1

declare dso_local i32 @unit_set_description(i8*, i8*) #1

declare dso_local i32 @unit_write_settingf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
