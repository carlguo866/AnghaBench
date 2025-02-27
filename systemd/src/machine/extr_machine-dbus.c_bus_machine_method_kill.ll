; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machine-dbus.c_bus_machine_method_kill.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machine-dbus.c_bus_machine_method_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"si\00", align 1
@KILL_ALL = common dso_local global i64 0, align 8
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid kill parameter '%s'\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid signal %i\00", align 1
@CAP_KILL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"org.freedesktop.machine1.manage-machines\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_machine_method_kill(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = call i32 @assert(%struct.TYPE_11__* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = call i32 @sd_bus_message_read(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @isempty(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @KILL_ALL, align 8
  store i64 %30, i64* %11, align 8
  br label %42

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @kill_who_from_string(i8* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @sd_bus_error_setf(i32* %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @SIGNAL_VALID(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @sd_bus_error_setf(i32* %47, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %4, align 4
  br label %81

51:                                               ; preds = %42
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load i32, i32* @CAP_KILL, align 4
  %54 = load i32, i32* @UID_INVALID, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @bus_verify_polkit_async(%struct.TYPE_11__* %52, i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 %54, i32* %58, i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %81

65:                                               ; preds = %51
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %81

69:                                               ; preds = %65
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @machine_kill(%struct.TYPE_11__* %70, i64 %71, i8* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %81

78:                                               ; preds = %69
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = call i32 @sd_bus_reply_method_return(%struct.TYPE_11__* %79, i32* null)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %76, %68, %63, %46, %36, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_11__*, i8*, i8**, i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @kill_who_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @SIGNAL_VALID(i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_11__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @machine_kill(%struct.TYPE_11__*, i64, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
