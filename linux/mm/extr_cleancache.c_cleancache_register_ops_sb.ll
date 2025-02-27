; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cleancache.c_cleancache_register_ops_sb.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cleancache.c_cleancache_register_ops_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i8*)* @cleancache_register_ops_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleancache_register_ops_sb(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %14 [
    i32 129, label %8
    i32 128, label %11
  ]

8:                                                ; preds = %2
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call i32 @__cleancache_init_fs(%struct.super_block* %9)
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @__cleancache_init_shared_fs(%struct.super_block* %12)
  br label %14

14:                                               ; preds = %2, %11, %8
  ret void
}

declare dso_local i32 @__cleancache_init_fs(%struct.super_block*) #1

declare dso_local i32 @__cleancache_init_shared_fs(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
