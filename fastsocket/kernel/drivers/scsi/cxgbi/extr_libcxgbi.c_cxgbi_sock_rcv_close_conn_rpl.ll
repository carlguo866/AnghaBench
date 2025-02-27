; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_close_conn_rpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_close_conn_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, i32, i64 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTPF_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"csk 0x%p,%u,0x%lx,%u, bad state.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_rcv_close_conn_rpl(%struct.cxgbi_sock* %0, i64 %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i64, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %12 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @log_debug(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %7, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %19 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %18)
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 %23, 1
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %28 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %29 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %34 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %43 [
    i32 130, label %36
    i32 129, label %39
    i32 128, label %39
    i32 131, label %42
  ]

36:                                               ; preds = %32
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %38 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %37, i32 129)
  br label %55

39:                                               ; preds = %32, %32
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %41 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %40)
  br label %55

42:                                               ; preds = %32
  br label %55

43:                                               ; preds = %32
  %44 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %46 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %44, i32 %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %43, %42, %39, %36
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %58 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %61 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %60)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
