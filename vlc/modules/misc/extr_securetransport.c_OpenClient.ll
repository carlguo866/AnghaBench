; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_OpenClient.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_OpenClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"open st client\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFTypeArrayCallBacks = common dso_local global i32 0, align 4
@st_ClientOps = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @OpenClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenClient(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @msg_Dbg(%struct.TYPE_7__* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.TYPE_6__* @malloc(i32 16)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @kCFAllocatorDefault, align 4
  %17 = call i32 @CFArrayCreateMutable(i32 %16, i32 0, i32* @kCFTypeArrayCallBacks)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32* @st_ClientOps, i32** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  %27 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CFArrayCreateMutable(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
