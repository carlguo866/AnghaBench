; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_lport_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_lport_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.ft_tport** }
%struct.ft_tport = type { i32 }

@ft_lport_lock = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ft_lport_del(%struct.fc_lport* %0, i8* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ft_tport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @mutex_lock(i32* @ft_lport_lock)
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = load %struct.ft_tport**, %struct.ft_tport*** %8, align 8
  %10 = load i64, i64* @FC_TYPE_FCP, align 8
  %11 = getelementptr inbounds %struct.ft_tport*, %struct.ft_tport** %9, i64 %10
  %12 = load %struct.ft_tport*, %struct.ft_tport** %11, align 8
  store %struct.ft_tport* %12, %struct.ft_tport** %5, align 8
  %13 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %14 = icmp ne %struct.ft_tport* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %17 = call i32 @ft_tport_delete(%struct.ft_tport* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = call i32 @mutex_unlock(i32* @ft_lport_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ft_tport_delete(%struct.ft_tport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
