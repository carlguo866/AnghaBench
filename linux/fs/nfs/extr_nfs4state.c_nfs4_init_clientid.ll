; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_init_clientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_init_clientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cred = type { i32 }
%struct.nfs4_setclientid_res = type { i32, i32 }
%struct.nfs_net = type { i16, i16 }

@nfs_net_id = common dso_local global i32 0, align 4
@NFS4CLNT_LEASE_CONFIRM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@NFS4_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_init_clientid(%struct.nfs_client* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.nfs4_setclientid_res, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_net*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %9 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 0
  %10 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 1
  %14 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @nfs_net_id, align 4
  %21 = call %struct.nfs_net* @net_generic(i32 %19, i32 %20)
  store %struct.nfs_net* %21, %struct.nfs_net** %8, align 8
  %22 = load i32, i32* @NFS4CLNT_LEASE_CONFIRM, align 4
  %23 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %30 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 2
  store i16 %31, i16* %6, align 2
  %32 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %33 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %40 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 2
  store i16 %41, i16* %6, align 2
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %44 = load i32, i32* @NFS4_CALLBACK, align 4
  %45 = load i16, i16* %6, align 2
  %46 = load %struct.cred*, %struct.cred** %4, align 8
  %47 = call i32 @nfs4_proc_setclientid(%struct.nfs_client* %43, i32 %44, i16 zeroext %45, %struct.cred* %46, %struct.nfs4_setclientid_res* %5)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %78

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %55 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %59 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @NFS4CLNT_LEASE_CONFIRM, align 4
  %61 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %62 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %61, i32 0, i32 0
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %51, %27
  %65 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %66 = load %struct.cred*, %struct.cred** %4, align 8
  %67 = call i32 @nfs4_proc_setclientid_confirm(%struct.nfs_client* %65, %struct.nfs4_setclientid_res* %5, %struct.cred* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %78

71:                                               ; preds = %64
  %72 = load i32, i32* @NFS4CLNT_LEASE_CONFIRM, align 4
  %73 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %74 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %73, i32 0, i32 0
  %75 = call i32 @clear_bit(i32 %72, i32* %74)
  %76 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %77 = call i32 @nfs4_setup_state_renewal(%struct.nfs_client* %76)
  br label %78

78:                                               ; preds = %71, %70, %50
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.nfs_net* @net_generic(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_proc_setclientid(%struct.nfs_client*, i32, i16 zeroext, %struct.cred*, %struct.nfs4_setclientid_res*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs4_proc_setclientid_confirm(%struct.nfs_client*, %struct.nfs4_setclientid_res*, %struct.cred*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nfs4_setup_state_renewal(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
