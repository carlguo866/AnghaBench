; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_genalloc.c_gen_pool_add_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_genalloc.c_gen_pool_add_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i64, i32, i32 }
%struct.gen_pool_chunk = type { i64, i64, i32, i32, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_pool_add_virt(%struct.gen_pool* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gen_pool_chunk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gen_pool* %0, %struct.gen_pool** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %17 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @BITS_PER_BYTE, align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @BITS_PER_BYTE, align 4
  %26 = sdiv i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add i64 32, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @__GFP_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.gen_pool_chunk* @kmalloc_node(i32 %30, i32 %33, i32 %34)
  store %struct.gen_pool_chunk* %35, %struct.gen_pool_chunk** %12, align 8
  %36 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %12, align 8
  %37 = icmp eq %struct.gen_pool_chunk* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %71

44:                                               ; preds = %5
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %12, align 8
  %47 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %12, align 8
  %50 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %12, align 8
  %55 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %12, align 8
  %57 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %56, i32 0, i32 3
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @atomic_set(i32* %57, i64 %58)
  %60 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %61 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %60, i32 0, i32 1
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %12, align 8
  %64 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %63, i32 0, i32 2
  %65 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %66 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %65, i32 0, i32 2
  %67 = call i32 @list_add_rcu(i32* %64, i32* %66)
  %68 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %69 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock(i32* %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %44, %41
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.gen_pool_chunk* @kmalloc_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
