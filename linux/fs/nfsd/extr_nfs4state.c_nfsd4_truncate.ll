; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd4_open = type { i32, i32 }
%struct.iattr = type { i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*)* @nfsd4_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_truncate(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.nfsd4_open*, align 8
  %8 = alloca %struct.iattr, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %7, align 8
  %9 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 1
  %11 = load i32, i32* @ATTR_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %13 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NFS4_SHARE_ACCESS_WRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @nfserr_inval, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %28 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %29 = call i32 @nfsd_setattr(%struct.svc_rqst* %27, %struct.svc_fh* %28, %struct.iattr* %8, i32 0, i32 0)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %24, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @nfsd_setattr(%struct.svc_rqst*, %struct.svc_fh*, %struct.iattr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
