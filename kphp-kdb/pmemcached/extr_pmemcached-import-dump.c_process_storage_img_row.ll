; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_process_storage_img_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_process_storage_img_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S = common dso_local global i32* null, align 8
@si_old_path = common dso_local global i64 0, align 8
@si_new_path = common dso_local global i64 0, align 8
@nrecords = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_storage_img_row() #0 {
  %1 = load i32*, i32** @S, align 8
  %2 = load i64, i64* @si_old_path, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** @S, align 8
  %6 = load i64, i64* @si_new_path, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @do_store(i32 %4, i32 %8)
  %10 = load i32, i32* @nrecords, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @nrecords, align 4
  ret void
}

declare dso_local i32 @do_store(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
