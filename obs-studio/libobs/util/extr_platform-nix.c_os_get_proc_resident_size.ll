; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_get_proc_resident_size.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_get_proc_resident_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_get_proc_resident_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4, i1 false)
  %4 = call i32 @os_get_proc_memory_usage_internal(%struct.TYPE_3__* %2)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @os_get_proc_memory_usage_internal(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
