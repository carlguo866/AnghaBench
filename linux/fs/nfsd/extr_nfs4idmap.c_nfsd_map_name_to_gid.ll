; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_nfsd_map_name_to_gid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_nfsd_map_name_to_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }

@nfserr_inval = common dso_local global i32 0, align 4
@IDMAP_TYPE_GROUP = common dso_local global i32 0, align 4
@nfserr_badowner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_map_name_to_gid(%struct.svc_rqst* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %11, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @nfserr_inval, align 4
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %14
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %21 = load i32, i32* @IDMAP_TYPE_GROUP, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @do_name_to_id(%struct.svc_rqst* %20, i32 %21, i8* %22, i64 %23, i32* %11)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %26 = call i32 @nfsd_user_namespace(%struct.svc_rqst* %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @make_kgid(i32 %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gid_valid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* @nfserr_badowner, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %17
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @do_name_to_id(%struct.svc_rqst*, i32, i8*, i64, i32*) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @nfsd_user_namespace(%struct.svc_rqst*) #1

declare dso_local i32 @gid_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
