; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_FinalMessage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_FinalMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_12__* null, align 8
@CS_CONNECTED = common dso_local global i64 0, align 8
@NA_LOOPBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"print \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_FinalMessage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  br label %11

11:                                               ; preds = %43, %9
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CS_CONNECTED, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NA_LOOPBACK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (%struct.TYPE_10__*, i8*, ...) @SV_SendServerCommand(%struct.TYPE_10__* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = call i32 (%struct.TYPE_10__*, i8*, ...) @SV_SendServerCommand(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @SV_SendClientSnapshot(%struct.TYPE_10__* %40)
  br label %42

42:                                               ; preds = %37, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 1
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %5, align 8
  br label %11

48:                                               ; preds = %11
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %6

52:                                               ; preds = %6
  ret void
}

declare dso_local i32 @SV_SendServerCommand(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @SV_SendClientSnapshot(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
