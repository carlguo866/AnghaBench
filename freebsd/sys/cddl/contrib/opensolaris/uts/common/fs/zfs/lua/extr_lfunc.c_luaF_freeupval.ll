; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lfunc.c_luaF_freeupval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lfunc.c_luaF_freeupval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaF_freeupval(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = icmp ne i32* %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @unlinkupval(%struct.TYPE_7__* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @luaM_free(i32* %16, %struct.TYPE_7__* %17)
  ret void
}

declare dso_local i32 @unlinkupval(%struct.TYPE_7__*) #1

declare dso_local i32 @luaM_free(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
