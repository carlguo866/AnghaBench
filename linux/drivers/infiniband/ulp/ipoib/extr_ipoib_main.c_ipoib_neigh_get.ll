; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_neigh = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.ipoib_neigh_table }
%struct.ipoib_neigh_table = type { i32 }
%struct.ipoib_neigh_hash = type { i32* }

@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@IPOIB_MAX_PATH_REC_QUEUE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipoib_neigh* @ipoib_neigh_get(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ipoib_neigh_table*, align 8
  %7 = alloca %struct.ipoib_neigh_hash*, align 8
  %8 = alloca %struct.ipoib_neigh*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %10)
  store %struct.ipoib_dev_priv* %11, %struct.ipoib_dev_priv** %5, align 8
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 0
  store %struct.ipoib_neigh_table* %13, %struct.ipoib_neigh_table** %6, align 8
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %8, align 8
  %14 = call i32 (...) @rcu_read_lock_bh()
  %15 = load %struct.ipoib_neigh_table*, %struct.ipoib_neigh_table** %6, align 8
  %16 = getelementptr inbounds %struct.ipoib_neigh_table, %struct.ipoib_neigh_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @rcu_dereference_bh(i32 %17)
  %19 = bitcast i8* %18 to %struct.ipoib_neigh_hash*
  store %struct.ipoib_neigh_hash* %19, %struct.ipoib_neigh_hash** %7, align 8
  %20 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %21 = icmp ne %struct.ipoib_neigh_hash* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %74

23:                                               ; preds = %2
  %24 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ipoib_addr_hash(%struct.ipoib_neigh_hash* %24, i32* %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %28 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @rcu_dereference_bh(i32 %32)
  %34 = bitcast i8* %33 to %struct.ipoib_neigh*
  store %struct.ipoib_neigh* %34, %struct.ipoib_neigh** %8, align 8
  br label %35

35:                                               ; preds = %67, %23
  %36 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %37 = icmp ne %struct.ipoib_neigh* %36, null
  br i1 %37, label %38, label %73

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %41 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INFINIBAND_ALEN, align 4
  %44 = call i64 @memcmp(i32* %39, i32 %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %38
  %47 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %48 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %47, i32 0, i32 2
  %49 = call i32 @atomic_inc_not_zero(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %8, align 8
  br label %74

52:                                               ; preds = %46
  %53 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %54 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %53, i32 0, i32 1
  %55 = call i64 @skb_queue_len(i32* %54)
  %56 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %57 = icmp slt i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @jiffies, align 4
  %63 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %64 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %52
  br label %74

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %69 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @rcu_dereference_bh(i32 %70)
  %72 = bitcast i8* %71 to %struct.ipoib_neigh*
  store %struct.ipoib_neigh* %72, %struct.ipoib_neigh** %8, align 8
  br label %35

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %65, %51, %22
  %75 = call i32 (...) @rcu_read_unlock_bh()
  %76 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  ret %struct.ipoib_neigh* %76
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i8* @rcu_dereference_bh(i32) #1

declare dso_local i64 @ipoib_addr_hash(%struct.ipoib_neigh_hash*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
