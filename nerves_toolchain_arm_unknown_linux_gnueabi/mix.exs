defmodule NervesToolchainArmUnknownLinuxGnueabi.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_toolchain_arm_unknown_linux_gnueabi,
     version: @version,
     elixir: "~> 1.3",
     compilers: Mix.compilers ++ [:nerves_toolchain],
     description: description,
     package: package,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [env: [
      target_tuple: :arm_unknown_linux_gnueabi
    ]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:nerves_toolchain, "~> 0.7"},
     #{:nerves_toolchain_ctng, path: "../nerves_toolchain_ctng"},
     {:nerves_toolchain_ctng, "~> 0.7"}
    ]
  end

  defp description do
    """
    Nerves Toolchain - arm-unknown-linux-gnueabi
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     files: ["lib", "linux_x86_64_defconfig", "darwin_x86_64_defconfig", "README.md", "LICENSE", "nerves.exs", "mix.exs", "VERSION"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/toolchains/nerves_toolchain_arm_unknown_linux_gnueabi"}]
  end

end