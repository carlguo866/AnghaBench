; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_terminal.c_status_speed.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_terminal.c_status_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Speed.#%d.........: %9sH/s (%0.2fms)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Speed.#*.........: %9sH/s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_speed(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %3, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = call i32 @status_speed_machine_readable(%struct.TYPE_16__* %15)
  br label %91

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call i32 @status_speed_json(%struct.TYPE_16__* %23)
  br label %91

25:                                               ; preds = %17
  %26 = call i64 @hcmalloc(i32 24)
  %27 = inttoptr i64 %26 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 @hashcat_get_status(%struct.TYPE_16__* %28, %struct.TYPE_15__* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = call i32 @hcfree(%struct.TYPE_15__* %33)
  br label %91

35:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i64 %47
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %6, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %71

54:                                               ; preds = %42
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %71

60:                                               ; preds = %54
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_info(%struct.TYPE_16__* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %60, %59, %53
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_info(%struct.TYPE_16__* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = call i32 @status_status_destroy(%struct.TYPE_16__* %86, %struct.TYPE_15__* %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = call i32 @hcfree(%struct.TYPE_15__* %89)
  br label %91

91:                                               ; preds = %85, %32, %22, %14
  ret void
}

declare dso_local i32 @status_speed_machine_readable(%struct.TYPE_16__*) #1

declare dso_local i32 @status_speed_json(%struct.TYPE_16__*) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @hashcat_get_status(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @hcfree(%struct.TYPE_15__*) #1

declare dso_local i32 @event_log_info(%struct.TYPE_16__*, i8*, i32, ...) #1

declare dso_local i32 @status_status_destroy(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
