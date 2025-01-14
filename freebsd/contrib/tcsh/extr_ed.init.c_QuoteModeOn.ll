; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_QuoteModeOn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_QuoteModeOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MacroLvl = common dso_local global i64 0, align 8
@qutty = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@edtty = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ttylist = common dso_local global %struct.TYPE_7__** null, align 8
@QU_IO = common dso_local global i64 0, align 8
@M_CONTROL = common dso_local global i64 0, align 8
@M_LOCAL = common dso_local global i64 0, align 8
@SHTTY = common dso_local global i32 0, align 4
@Tty_quote_mode = common dso_local global i32 0, align 4
@M_INPUT = common dso_local global i64 0, align 8
@M_LINED = common dso_local global i64 0, align 8
@M_OUTPUT = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @QuoteModeOn() #0 {
  %1 = load i64, i64* @MacroLvl, align 8
  %2 = icmp sge i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %52

4:                                                ; preds = %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_8__* @qutty to i8*), i8* align 4 bitcast (%struct.TYPE_8__* @edtty to i8*), i64 24, i1 false)
  %5 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %6 = load i64, i64* @QU_IO, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %5, i64 %6
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = load i64, i64* @M_CONTROL, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 1, i32 0), align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 1, i32 0), align 4
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %17 = load i64, i64* @QU_IO, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %16, i64 %17
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i64, i64* @M_CONTROL, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 1, i32 0), align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 1, i32 0), align 4
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %27 = load i64, i64* @QU_IO, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i64, i64* @M_LOCAL, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 0), align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 0), align 4
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ttylist, align 8
  %38 = load i64, i64* @QU_IO, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i64, i64* @M_LOCAL, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 0), align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qutty, i32 0, i32 0), align 4
  %47 = load i32, i32* @SHTTY, align 4
  %48 = call i32 @tty_setty(i32 %47, %struct.TYPE_8__* @qutty)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %4
  br label %52

51:                                               ; preds = %4
  store i32 1, i32* @Tty_quote_mode, align 4
  br label %52

52:                                               ; preds = %51, %50, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tty_setty(i32, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
