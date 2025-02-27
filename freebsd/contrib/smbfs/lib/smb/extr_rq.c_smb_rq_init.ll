; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rq.c_smb_rq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rq.c_smb_rq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32 }
%struct.smb_rq = type { i32, i32, %struct.smb_ctx*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@M_MINSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rq_init(%struct.smb_ctx* %0, i32 %1, i64 %2, %struct.smb_rq** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.smb_rq**, align 8
  %10 = alloca %struct.smb_rq*, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.smb_rq** %3, %struct.smb_rq*** %9, align 8
  %11 = call %struct.smb_rq* @malloc(i32 24)
  store %struct.smb_rq* %11, %struct.smb_rq** %10, align 8
  %12 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %13 = icmp eq %struct.smb_rq* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %5, align 4
  br label %35

16:                                               ; preds = %4
  %17 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %18 = call i32 @bzero(%struct.smb_rq* %17, i32 24)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %21 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %23 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %24 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %23, i32 0, i32 2
  store %struct.smb_ctx* %22, %struct.smb_ctx** %24, align 8
  %25 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %26 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %25, i32 0, i32 1
  %27 = load i64, i64* @M_MINSIZE, align 8
  %28 = call i32 @mb_init(i32* %26, i64 %27)
  %29 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %30 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @mb_init(i32* %30, i64 %31)
  %33 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %34 = load %struct.smb_rq**, %struct.smb_rq*** %9, align 8
  store %struct.smb_rq* %33, %struct.smb_rq** %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %16, %14
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.smb_rq* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.smb_rq*, i32) #1

declare dso_local i32 @mb_init(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
