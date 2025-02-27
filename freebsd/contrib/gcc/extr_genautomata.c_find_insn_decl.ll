; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_find_insn_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_find_insn_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@dm_insn_reserv = common dso_local global i32 0, align 4
@work_insn_decl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@insn_decl_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @find_insn_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_insn_decl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @dm_insn_reserv, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @work_insn_decl, i32 0, i32 0), align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.TYPE_6__* @DECL_INSN_RESERV(%struct.TYPE_5__* @work_insn_decl)
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load i32, i32* @insn_decl_table, align 4
  %9 = call i8* @htab_find(i32 %8, %struct.TYPE_5__* @work_insn_decl)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i32
  ret i32 %11
}

declare dso_local %struct.TYPE_6__* @DECL_INSN_RESERV(%struct.TYPE_5__*) #1

declare dso_local i8* @htab_find(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
