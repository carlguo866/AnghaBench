; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_lru_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_lru_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.val_neg_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.val_neg_cache*, %struct.val_neg_data*)* @neg_lru_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neg_lru_remove(%struct.val_neg_cache* %0, %struct.val_neg_data* %1) #0 {
  %3 = alloca %struct.val_neg_cache*, align 8
  %4 = alloca %struct.val_neg_data*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %3, align 8
  store %struct.val_neg_data* %1, %struct.val_neg_data** %4, align 8
  %5 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %6 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %11 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %14 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %16, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %19 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %22 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %21, i32 0, i32 1
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %22, align 8
  br label %23

23:                                               ; preds = %17, %9
  %24 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %25 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %30 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %33 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %35, align 8
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %38 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %41 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %40, i32 0, i32 0
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %41, align 8
  br label %42

42:                                               ; preds = %36, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
