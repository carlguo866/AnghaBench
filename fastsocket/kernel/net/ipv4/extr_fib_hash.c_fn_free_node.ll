; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_free_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_node = type { i32 }

@fn_hash_kmem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib_node*)* @fn_free_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_free_node(%struct.fib_node* %0) #0 {
  %2 = alloca %struct.fib_node*, align 8
  store %struct.fib_node* %0, %struct.fib_node** %2, align 8
  %3 = load i32, i32* @fn_hash_kmem, align 4
  %4 = load %struct.fib_node*, %struct.fib_node** %2, align 8
  %5 = call i32 @kmem_cache_free(i32 %3, %struct.fib_node* %4)
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
