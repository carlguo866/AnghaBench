; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_auth_add_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_auth_add_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@SCTP_INITIATION = common dso_local global i64 0, align 8
@SCTP_INITIATION_ACK = common dso_local global i64 0, align 8
@SCTP_SHUTDOWN_COMPLETE = common dso_local global i64 0, align 8
@SCTP_AUTHENTICATION = common dso_local global i64 0, align 8
@SCTP_DEBUG_AUTH1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"SCTP: added chunk %u (0x%02x) to Auth list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_auth_add_chunk(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %49

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @SCTP_INITIATION, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @SCTP_INITIATION_ACK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @SCTP_SHUTDOWN_COMPLETE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @SCTP_AUTHENTICATION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %13, %9
  store i32 -1, i32* %3, align 4
  br label %49

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @SCTP_DEBUG_AUTH1, align 4
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @SCTPDBG(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %34, %26
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %25, %8
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @SCTPDBG(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
