; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_write_seek.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_write_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newidx_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@write_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_seek(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 (...) @flushout()
  %4 = load i32, i32* @newidx_fd, align 4
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @SEEK_SET, align 4
  %7 = call i64 @lseek(i32 %4, i64 %5, i32 %6)
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* @write_pos, align 8
  ret void
}

declare dso_local i32 @flushout(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
