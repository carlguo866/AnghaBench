; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_..libcxgbi.h_cxgbi_sock_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_..libcxgbi.h_cxgbi_sock_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"csk 0x%p,%u,0x%lx, state -> %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*, i32)* @cxgbi_sock_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbi_sock_set_state(%struct.cxgbi_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %12 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @log_debug(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %7, i32 %10, i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %18 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
