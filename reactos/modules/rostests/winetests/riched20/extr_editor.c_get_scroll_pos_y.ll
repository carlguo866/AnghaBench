; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_get_scroll_pos_y.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_get_scroll_pos_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@__const.get_scroll_pos_y.p = private unnamed_addr constant %struct.TYPE_2__ { i32 -1, i32 -1, i32 0, i32 0 }, align 4
@EM_GETSCROLLPOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"p.x:%d p.y:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_scroll_pos_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scroll_pos_y(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %2, align 4
  %4 = bitcast %struct.TYPE_2__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_2__* @__const.get_scroll_pos_y.p to i8*), i64 16, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @EM_GETSCROLLPOS, align 4
  %7 = ptrtoint %struct.TYPE_2__* %3 to i32
  %8 = call i32 @SendMessageA(i32 %5, i32 %6, i32 0, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, -1
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ false, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
