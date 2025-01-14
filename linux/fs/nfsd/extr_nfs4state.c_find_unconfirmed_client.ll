; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_unconfirmed_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_unconfirmed_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32 }
%struct.nfsd_net = type { i32, %struct.list_head* }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_client* (i32*, i32, %struct.nfsd_net*)* @find_unconfirmed_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_client* @find_unconfirmed_client(i32* %0, i32 %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd_net*, align 8
  %7 = alloca %struct.list_head*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfsd_net* %2, %struct.nfsd_net** %6, align 8
  %8 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %9 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %8, i32 0, i32 1
  %10 = load %struct.list_head*, %struct.list_head** %9, align 8
  store %struct.list_head* %10, %struct.list_head** %7, align 8
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.list_head*, %struct.list_head** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.nfs4_client* @find_client_in_id_table(%struct.list_head* %14, i32* %15, i32 %16)
  ret %struct.nfs4_client* %17
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.nfs4_client* @find_client_in_id_table(%struct.list_head*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
