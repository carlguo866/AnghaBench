; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_hash.c_free_hash.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_hash.c_free_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_hash(%struct.hash_table* %0) #0 {
  %2 = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %3 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @free(i32* %5)
  %7 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
