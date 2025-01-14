; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Assign.c_Assign_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Assign.c_Assign_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [711 x i8] c"`Assign` is potentially the most important class in Cello. It is used throughout Cello to initialise objects using other objects. In C++ this is called the _copy constructor_ and it is used to assign the value of one object to another.\0A\0ABy default the `Assign` class uses the `Size` class to copy the memory from one object to another. But for more complex objects which maintain their own behaviours and state this may need to be overridden.\0A\0AThe most important thing about the `Assign` class is that it must work on the assumption that the target object may not have had it's constructor called and could be uninitialised with just zero'd memory. This is often the case when copying contents into containers.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Assign_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Assign_Description() #0 {
  ret i8* getelementptr inbounds ([711 x i8], [711 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
