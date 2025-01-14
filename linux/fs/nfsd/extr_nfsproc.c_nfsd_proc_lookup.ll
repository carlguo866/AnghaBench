; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_diropres*, %struct.nfsd_diropargs* }
%struct.nfsd_diropres = type { i32 }
%struct.nfsd_diropargs = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"nfsd: LOOKUP   %s %.*s\0A\00", align 1
@NFS_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_lookup(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nfsd_diropargs*, align 8
  %4 = alloca %struct.nfsd_diropres*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 1
  %8 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %7, align 8
  store %struct.nfsd_diropargs* %8, %struct.nfsd_diropargs** %3, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 0
  %11 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %10, align 8
  store %struct.nfsd_diropres* %11, %struct.nfsd_diropres** %4, align 8
  %12 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %13 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %12, i32 0, i32 0
  %14 = call i32 @SVCFH_fmt(i32* %13)
  %15 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %16 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %19 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %4, align 8
  %23 = getelementptr inbounds %struct.nfsd_diropres, %struct.nfsd_diropres* %22, i32 0, i32 0
  %24 = load i32, i32* @NFS_FHSIZE, align 4
  %25 = call i32 @fh_init(i32* %23, i32 %24)
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %27 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %27, i32 0, i32 0
  %29 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %30 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %33 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %4, align 8
  %36 = getelementptr inbounds %struct.nfsd_diropres, %struct.nfsd_diropres* %35, i32 0, i32 0
  %37 = call i32 @nfsd_lookup(%struct.svc_rqst* %26, i32* %28, i32 %31, i32 %34, i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %39 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %38, i32 0, i32 0
  %40 = call i32 @fh_put(i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %4, align 8
  %43 = call i32 @nfsd_return_dirop(i32 %41, %struct.nfsd_diropres* %42)
  ret i32 %43
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_init(i32*, i32) #1

declare dso_local i32 @nfsd_lookup(%struct.svc_rqst*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fh_put(i32*) #1

declare dso_local i32 @nfsd_return_dirop(i32, %struct.nfsd_diropres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
