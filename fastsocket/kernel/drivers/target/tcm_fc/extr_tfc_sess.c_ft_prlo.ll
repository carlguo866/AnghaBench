; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prlo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ft_sess = type { i32 }
%struct.ft_tport = type { i32 }

@ft_lport_lock = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @ft_prlo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_prlo(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  %3 = alloca %struct.ft_sess*, align 8
  %4 = alloca %struct.ft_tport*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %5 = call i32 @mutex_lock(i32* @ft_lport_lock)
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %7 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @FC_TYPE_FCP, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lockdep_is_held(i32* @ft_lport_lock)
  %15 = call %struct.ft_tport* @rcu_dereference_protected(i32 %13, i32 %14)
  store %struct.ft_tport* %15, %struct.ft_tport** %4, align 8
  %16 = load %struct.ft_tport*, %struct.ft_tport** %4, align 8
  %17 = icmp ne %struct.ft_tport* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @mutex_unlock(i32* @ft_lport_lock)
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.ft_tport*, %struct.ft_tport** %4, align 8
  %22 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %23 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ft_sess* @ft_sess_delete(%struct.ft_tport* %21, i32 %25)
  store %struct.ft_sess* %26, %struct.ft_sess** %3, align 8
  %27 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %28 = icmp ne %struct.ft_sess* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = call i32 @mutex_unlock(i32* @ft_lport_lock)
  br label %43

31:                                               ; preds = %20
  %32 = call i32 @mutex_unlock(i32* @ft_lport_lock)
  %33 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %34 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @transport_deregister_session_configfs(i32 %35)
  %37 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %38 = call i32 @ft_sess_put(%struct.ft_sess* %37)
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %40 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %31, %29, %18
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ft_tport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.ft_sess* @ft_sess_delete(%struct.ft_tport*, i32) #1

declare dso_local i32 @transport_deregister_session_configfs(i32) #1

declare dso_local i32 @ft_sess_put(%struct.ft_sess*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
