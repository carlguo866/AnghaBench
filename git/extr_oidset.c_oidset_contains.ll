; ModuleID = '/home/carl/AnghaBench/git/extr_oidset.c_oidset_contains.c'
source_filename = "/home/carl/AnghaBench/git/extr_oidset.c_oidset_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidset = type { i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oidset_contains(%struct.oidset* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.oidset*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i64, align 8
  store %struct.oidset* %0, %struct.oidset** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %6 = load %struct.oidset*, %struct.oidset** %3, align 8
  %7 = getelementptr inbounds %struct.oidset, %struct.oidset* %6, i32 0, i32 0
  %8 = load %struct.object_id*, %struct.object_id** %4, align 8
  %9 = getelementptr inbounds %struct.object_id, %struct.object_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @kh_get_oid_set(i32* %7, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.oidset*, %struct.oidset** %3, align 8
  %14 = getelementptr inbounds %struct.oidset, %struct.oidset* %13, i32 0, i32 0
  %15 = call i64 @kh_end(i32* %14)
  %16 = icmp ne i64 %12, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @kh_get_oid_set(i32*, i32) #1

declare dso_local i64 @kh_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
