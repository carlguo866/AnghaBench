; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_hold_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_hold_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbuf_hold_impl_data = type { i32 }

@DBUF_HOLD_IMPL_MAX_DEPTH = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbuf_hold_impl(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.dbuf_hold_impl_data*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32** %6, i32*** %14, align 8
  %17 = load i32, i32* @DBUF_HOLD_IMPL_MAX_DEPTH, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @KM_SLEEP, align 4
  %22 = call %struct.dbuf_hold_impl_data* @kmem_alloc(i32 %20, i32 %21)
  store %struct.dbuf_hold_impl_data* %22, %struct.dbuf_hold_impl_data** %15, align 8
  %23 = load %struct.dbuf_hold_impl_data*, %struct.dbuf_hold_impl_data** %15, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i32**, i32*** %14, align 8
  %31 = call i32 @__dbuf_hold_impl_init(%struct.dbuf_hold_impl_data* %23, i32* %24, i32 %25, i32 %26, i32 %27, i32 %28, i8* %29, i32** %30, i32 0)
  %32 = load %struct.dbuf_hold_impl_data*, %struct.dbuf_hold_impl_data** %15, align 8
  %33 = call i32 @__dbuf_hold_impl(%struct.dbuf_hold_impl_data* %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.dbuf_hold_impl_data*, %struct.dbuf_hold_impl_data** %15, align 8
  %35 = load i32, i32* @DBUF_HOLD_IMPL_MAX_DEPTH, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @kmem_free(%struct.dbuf_hold_impl_data* %34, i32 %38)
  %40 = load i32, i32* %16, align 4
  ret i32 %40
}

declare dso_local %struct.dbuf_hold_impl_data* @kmem_alloc(i32, i32) #1

declare dso_local i32 @__dbuf_hold_impl_init(%struct.dbuf_hold_impl_data*, i32*, i32, i32, i32, i32, i8*, i32**, i32) #1

declare dso_local i32 @__dbuf_hold_impl(%struct.dbuf_hold_impl_data*) #1

declare dso_local i32 @kmem_free(%struct.dbuf_hold_impl_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
