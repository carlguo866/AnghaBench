; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rules_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rules_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rules_ops = type { i32, %struct.net* }
%struct.net = type { i32 }

@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib_rules_unregister(%struct.fib_rules_ops* %0) #0 {
  %2 = alloca %struct.fib_rules_ops*, align 8
  %3 = alloca %struct.net*, align 8
  store %struct.fib_rules_ops* %0, %struct.fib_rules_ops** %2, align 8
  %4 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %2, align 8
  %5 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %4, i32 0, i32 1
  %6 = load %struct.net*, %struct.net** %5, align 8
  store %struct.net* %6, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = getelementptr inbounds %struct.net, %struct.net* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %2, align 8
  %11 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %10, i32 0, i32 0
  %12 = call i32 @list_del_rcu(i32* %11)
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %2, align 8
  %17 = call i32 @fib_rules_cleanup_ops(%struct.fib_rules_ops* %16)
  %18 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %2, align 8
  %19 = load i32, i32* @rcu, align 4
  %20 = call i32 @kfree_rcu(%struct.fib_rules_ops* %18, i32 %19)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fib_rules_cleanup_ops(%struct.fib_rules_ops*) #1

declare dso_local i32 @kfree_rcu(%struct.fib_rules_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
