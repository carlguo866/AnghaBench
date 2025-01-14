; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_MediaDel.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_MediaDel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_18__**, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_18__**, i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"deleting media: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_17__*)* @MediaDel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MediaDel(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = call i32 @msg_Dbg(%struct.TYPE_15__* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = call i32 @TAB_REMOVE(i32 %16, i32 %19, %struct.TYPE_17__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @httpd_UrlDelete(i32 %24)
  br label %26

26:                                               ; preds = %31, %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %35, i64 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = call i32 @RtspClientDel(%struct.TYPE_17__* %32, %struct.TYPE_18__* %37)
  br label %26

39:                                               ; preds = %26
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %44, align 8
  %46 = call i32 @TAB_CLEAN(i64 %42, %struct.TYPE_18__** %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = call i32 @free(%struct.TYPE_17__* %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = call i32 @free(%struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = call i32 @free(%struct.TYPE_17__* %57)
  br label %59

59:                                               ; preds = %64, %39
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %69, i64 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = call i32 @MediaDelES(%struct.TYPE_15__* %65, %struct.TYPE_17__* %66, i32* %72)
  br label %59

74:                                               ; preds = %59
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %79, align 8
  %81 = call i32 @TAB_CLEAN(i64 %77, %struct.TYPE_18__** %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = call i32 @vlc_mutex_destroy(i32* %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = call i32 @free(%struct.TYPE_17__* %85)
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @TAB_REMOVE(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @httpd_UrlDelete(i32) #1

declare dso_local i32 @RtspClientDel(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @TAB_CLEAN(i64, %struct.TYPE_18__**) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @MediaDelES(%struct.TYPE_15__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
