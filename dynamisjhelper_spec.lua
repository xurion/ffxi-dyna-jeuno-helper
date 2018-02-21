function get_addon()

    package.loaded['dynamisjhelper'] = nil
    return require('dynamisjhelper')
end

describe('Dynamis Jeuno Helper', function()

    before_each(function ()

        _G._addon = {}
--        _G.windower = {}
    end)

    it('sets the available _addon commands to be "dynajhelper" and "djh"', function ()

        get_addon()
        assert.are.same({'dynamisjhelper', 'djh'}, _G._addon.commands)
    end)

    it('sets the _addon name to "DynamisJHelper"', function ()

        get_addon()
        assert.is.equal('DynamisJHelper', _G._addon.name)
    end)

    it('sets the _addon author as "Xurion of Bismarck"', function ()

        get_addon()
        assert.is.equal('Xurion of Bismarck', _G._addon.author)
    end)

    it('sets the _addon version in the semver format of "x.x.x"', function ()

        get_addon()
        assert.is_not.equal(nil, _G._addon.version)
        assert.is.equal(_G._addon.version, string.match(_G._addon.version, '%d.%d.%d'))
    end)
end)
