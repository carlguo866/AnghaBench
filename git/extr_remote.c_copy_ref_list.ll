; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_copy_ref_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_copy_ref_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @copy_ref_list(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref**, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  store %struct.ref* null, %struct.ref** %3, align 8
  store %struct.ref** %3, %struct.ref*** %4, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.ref*, %struct.ref** %2, align 8
  %7 = icmp ne %struct.ref* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load %struct.ref*, %struct.ref** %2, align 8
  %10 = call %struct.ref* @copy_ref(%struct.ref* %9)
  %11 = load %struct.ref**, %struct.ref*** %4, align 8
  store %struct.ref* %10, %struct.ref** %11, align 8
  %12 = load %struct.ref*, %struct.ref** %2, align 8
  %13 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 0
  %14 = load %struct.ref*, %struct.ref** %13, align 8
  store %struct.ref* %14, %struct.ref** %2, align 8
  %15 = load %struct.ref**, %struct.ref*** %4, align 8
  %16 = load %struct.ref*, %struct.ref** %15, align 8
  %17 = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 0
  store %struct.ref** %17, %struct.ref*** %4, align 8
  br label %5

18:                                               ; preds = %5
  %19 = load %struct.ref*, %struct.ref** %3, align 8
  ret %struct.ref* %19
}

declare dso_local %struct.ref* @copy_ref(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
