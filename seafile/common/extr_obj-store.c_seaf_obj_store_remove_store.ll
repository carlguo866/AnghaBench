; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_remove_store.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_remove_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SeafObjStore = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_obj_store_remove_store(%struct.SeafObjStore* %0, i8* %1) #0 {
  %3 = alloca %struct.SeafObjStore*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.SeafObjStore* %0, %struct.SeafObjStore** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.SeafObjStore*, %struct.SeafObjStore** %3, align 8
  %7 = getelementptr inbounds %struct.SeafObjStore, %struct.SeafObjStore* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_3__*, i8*)*, i32 (%struct.TYPE_3__*, i8*)** %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 %11(%struct.TYPE_3__* %12, i8* %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
