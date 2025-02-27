; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_unregister_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_unregister_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cache_detail = type { i32 }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_cache_unregister_net(%struct.net* %0, %struct.cache_detail* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.super_block*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.cache_detail* %1, %struct.cache_detail** %4, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = call %struct.super_block* @rpc_get_sb_net(%struct.net* %6)
  store %struct.super_block* %7, %struct.super_block** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %5, align 8
  %9 = icmp ne %struct.super_block* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %13 = call i32 @nfs_cache_unregister_sb(%struct.super_block* %11, %struct.cache_detail* %12)
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = call i32 @rpc_put_sb_net(%struct.net* %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %18 = call i32 @sunrpc_destroy_cache_detail(%struct.cache_detail* %17)
  ret void
}

declare dso_local %struct.super_block* @rpc_get_sb_net(%struct.net*) #1

declare dso_local i32 @nfs_cache_unregister_sb(%struct.super_block*, %struct.cache_detail*) #1

declare dso_local i32 @rpc_put_sb_net(%struct.net*) #1

declare dso_local i32 @sunrpc_destroy_cache_detail(%struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
