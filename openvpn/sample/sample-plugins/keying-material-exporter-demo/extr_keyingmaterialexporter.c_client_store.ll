; ModuleID = '/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_client_store.c'
source_filename = "/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_client_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_plugin_args_func_in = type { i64, i64 }
%struct.plugin = type { i32 }
%struct.session = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"/tmp/openvpn_sso_user\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"app session file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openvpn_plugin_args_func_in*)* @client_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_store(%struct.openvpn_plugin_args_func_in* %0) #0 {
  %2 = alloca %struct.openvpn_plugin_args_func_in*, align 8
  %3 = alloca %struct.plugin*, align 8
  %4 = alloca %struct.session*, align 8
  %5 = alloca i8*, align 8
  store %struct.openvpn_plugin_args_func_in* %0, %struct.openvpn_plugin_args_func_in** %2, align 8
  %6 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %2, align 8
  %7 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.plugin*
  store %struct.plugin* %9, %struct.plugin** %3, align 8
  %10 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %2, align 8
  %11 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.session*
  store %struct.session* %13, %struct.session** %4, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @ovpn_note(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.session*, %struct.session** %4, align 8
  %18 = getelementptr inbounds %struct.session, %struct.session* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @file_store(i8* %16, i32 %19)
  ret void
}

declare dso_local i32 @ovpn_note(i8*, i8*) #1

declare dso_local i32 @file_store(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
