; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_op_error_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_op_error_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CID_ERROR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, %struct.sctp_chunk*, i64)* @sctp_make_op_error_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %9 = load i32, i32* @SCTP_CID_ERROR, align 4
  %10 = load i64, i64* %6, align 8
  %11 = add i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %8, i32 %9, i32 0, i32 %12, i32 %13)
  store %struct.sctp_chunk* %14, %struct.sctp_chunk** %7, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %16 = icmp ne %struct.sctp_chunk* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %20 = icmp ne %struct.sctp_chunk* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %18
  br label %28

28:                                               ; preds = %27, %17
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %29
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
