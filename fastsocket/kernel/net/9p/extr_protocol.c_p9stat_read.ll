; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_protocol.c_p9stat_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_protocol.c_p9stat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_wstat = type { i32 }
%struct.p9_fcall = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"<<< p9stat_read failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9stat_read(i8* %0, i32 %1, %struct.p9_wstat* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_wstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_fcall, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.p9_wstat* %2, %struct.p9_wstat** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %9, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %9, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.p9_wstat*, %struct.p9_wstat** %7, align 8
  %20 = call i32 @p9pdu_readf(%struct.p9_fcall* %9, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.p9_wstat* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @P9_DEBUG_9P, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @P9_DPRINTK(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 @p9pdu_dump(i32 1, %struct.p9_fcall* %9)
  br label %28

28:                                               ; preds = %23, %4
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local i32 @p9pdu_readf(%struct.p9_fcall*, i32, i8*, %struct.p9_wstat*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32) #1

declare dso_local i32 @p9pdu_dump(i32, %struct.p9_fcall*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
