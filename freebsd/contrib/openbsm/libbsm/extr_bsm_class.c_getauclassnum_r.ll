; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_class.c_getauclassnum_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_class.c_getauclassnum_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_class_ent = type { i64 }

@mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.au_class_ent* @getauclassnum_r(%struct.au_class_ent* %0, i64 %1) #0 {
  %3 = alloca %struct.au_class_ent*, align 8
  %4 = alloca %struct.au_class_ent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.au_class_ent*, align 8
  store %struct.au_class_ent* %0, %struct.au_class_ent** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 (...) @setauclass_locked()
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.au_class_ent*, %struct.au_class_ent** %4, align 8
  %10 = call %struct.au_class_ent* @getauclassent_r_locked(%struct.au_class_ent* %9)
  store %struct.au_class_ent* %10, %struct.au_class_ent** %6, align 8
  %11 = icmp ne %struct.au_class_ent* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.au_class_ent*, %struct.au_class_ent** %6, align 8
  %15 = getelementptr inbounds %struct.au_class_ent, %struct.au_class_ent* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.au_class_ent*, %struct.au_class_ent** %6, align 8
  store %struct.au_class_ent* %19, %struct.au_class_ent** %3, align 8
  br label %22

20:                                               ; preds = %12
  br label %8

21:                                               ; preds = %8
  store %struct.au_class_ent* null, %struct.au_class_ent** %3, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.au_class_ent*, %struct.au_class_ent** %3, align 8
  ret %struct.au_class_ent* %23
}

declare dso_local i32 @setauclass_locked(...) #1

declare dso_local %struct.au_class_ent* @getauclassent_r_locked(%struct.au_class_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
